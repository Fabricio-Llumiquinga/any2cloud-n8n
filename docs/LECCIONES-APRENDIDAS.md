# 🎓 Lecciones Aprendidas - Despliegue de Flujos n8n

Este documento contiene las lecciones críticas aprendidas durante el primer despliegue exitoso de un flujo de trabajo a n8n.

## 🔴 Problema Principal Encontrado

### Error: "Invalid node - parameters: Required"

**Síntoma**: La API de n8n rechazaba la creación de workflows con el error:
```
Invalid node at index 0: parameters: Required (expected object, received undefined)
```

**Causa Raíz**: Los nodos con `parameters: {}` (objeto vacío) son rechazados por la API de n8n.

## ✅ Solución Descubierta

### Regla Crítica: Nunca Usar `parameters: {}`

Todos los nodos DEBEN tener al menos una propiedad en el objeto `parameters`, incluso si es informativa o tiene valor vacío.

### Ejemplo: Manual Trigger

```json
// ❌ INCORRECTO - Rechazado por la API
{
  "id": "node-1",
  "name": "Manual Trigger",
  "type": "n8n-nodes-base.manualTrigger",
  "typeVersion": 1,
  "position": [240, 300],
  "parameters": {}  // ❌ FALLA
}

// ✅ CORRECTO - Aceptado por la API
{
  "id": "node-1",
  "name": "Manual Trigger",
  "type": "n8n-nodes-base.manualTrigger",
  "typeVersion": 1,
  "position": [240, 300],
  "parameters": {
    "notice": ""  // ✅ Propiedad requerida
  }
}
```

## 📋 Proceso de Descubrimiento

### 1. Identificar Propiedades del Nodo

Antes de crear cualquier nodo, usa `get_node` con `detail: 'full'`:

```javascript
get_node({
  nodeType: 'n8n-nodes-base.manualTrigger',
  detail: 'full'
})
```

**Resultado**:
```json
{
  "properties": [
    {
      "displayName": "This node is where...",
      "name": "notice",
      "type": "notice",
      "default": ""
    }
  ]
}
```

### 2. Incluir al Menos Una Propiedad

Identifica la propiedad principal del nodo (aunque sea informativa) e inclúyela en `parameters`:

```json
"parameters": {
  "notice": ""  // Propiedad identificada en get_node
}
```

### 3. Validar Antes de Desplegar

Usa `validate_node` para verificar la configuración:

```javascript
validate_node({
  nodeType: 'n8n-nodes-base.manualTrigger',
  config: {
    notice: ""
  },
  mode: 'full'
})
```

## 🎯 Mejores Prácticas Establecidas

### 1. Workflow de Creación de Nodos

```
1. search_nodes → Encontrar el nodo correcto
2. get_node (detail: 'full') → Ver TODAS las propiedades
3. Identificar propiedades requeridas
4. validate_node (mode: 'minimal') → Verificación rápida
5. validate_node (mode: 'full') → Validación completa
6. Crear el nodo con propiedades correctas
```

### 2. Estructura Mínima de un Nodo

```json
{
  "id": "unique-uuid-here",
  "name": "Node Name",
  "type": "n8n-nodes-base.nodeType",
  "typeVersion": 1,
  "position": [x, y],
  "parameters": {
    // ⚠️ NUNCA dejar vacío
    // Incluir al menos una propiedad del nodo
    "propertyName": "value"
  }
}
```

### 3. Nodos Comunes y Sus Propiedades Mínimas

#### Manual Trigger
```json
"parameters": {
  "notice": ""
}
```

#### Set Node
```json
"parameters": {
  "mode": "manual",
  "duplicateItem": false,
  "assignments": {
    "assignments": [
      {
        "id": "field-1",
        "name": "fieldName",
        "type": "string",
        "value": "value"
      }
    ]
  },
  "includeOtherFields": false,
  "options": {}
}
```

#### HTTP Request
```json
"parameters": {
  "method": "GET",
  "url": "https://api.example.com",
  "options": {}
}
```

#### Webhook
```json
"parameters": {
  "httpMethod": "POST",
  "path": "webhook-path",
  "responseMode": "onReceived"
}
```

## 🔍 Debugging Tips

### Si el Despliegue Falla

1. **Verifica `parameters`**:
   ```javascript
   // Cada nodo debe tener al menos una propiedad
   console.log(node.parameters); // No debe ser {}
   ```

2. **Usa `get_node` para ver propiedades**:
   ```javascript
   get_node({
     nodeType: 'n8n-nodes-base.yourNode',
     detail: 'full'
   })
   ```

3. **Valida antes de crear**:
   ```javascript
   validate_node({
     nodeType: 'n8n-nodes-base.yourNode',
     config: yourConfig,
     mode: 'full'
   })
   ```

4. **Revisa el error específico**:
   - "parameters: Required" → Agrega propiedades a parameters
   - "Invalid type" → Verifica el tipo de datos
   - "Missing required field" → Usa get_node para ver campos requeridos

## 📊 Estadísticas del Primer Despliegue

- **Intentos fallidos**: 8
- **Tiempo total**: ~15 minutos
- **Causa del fallo**: `parameters: {}` vacío
- **Solución**: Agregar `"notice": ""` al Manual Trigger
- **Resultado**: ✅ Despliegue exitoso

## 🎓 Lecciones Clave

### 1. Siempre Usa `get_node` Primero
No asumas la estructura de un nodo. Siempre consulta sus propiedades con `get_node`.

### 2. Nunca Dejes `parameters` Vacío
Incluso si un nodo parece no necesitar configuración, debe tener al menos una propiedad.

### 3. Valida en Múltiples Niveles
- `validate_node` (minimal) → Verificación rápida
- `validate_node` (full) → Validación completa
- `validate_workflow` → Validación del flujo completo

### 4. Usa Plantillas como Referencia
Las plantillas de n8n.io muestran configuraciones reales y funcionando.

### 5. IDs Únicos
Usa UUIDs únicos para cada nodo (formato: `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`).

## 🚀 Flujo de Trabajo Recomendado

```
1. Definir requisitos del flujo
2. Buscar plantillas similares (search_templates)
3. Si no hay plantilla:
   a. Buscar nodos necesarios (search_nodes)
   b. Obtener propiedades completas (get_node detail: 'full')
   c. Validar configuración (validate_node)
4. Construir JSON del workflow
5. Validar workflow completo (validate_workflow)
6. Desplegar (n8n_create_workflow)
7. Verificar (n8n_get_workflow)
8. Probar (n8n_test_workflow)
```

## 📝 Checklist Pre-Despliegue

Antes de desplegar cualquier workflow, verifica:

- [ ] Todos los nodos tienen `parameters` con al menos una propiedad
- [ ] Los IDs de nodos son únicos (UUIDs)
- [ ] Las conexiones usan nombres de nodos correctos
- [ ] Los `typeVersion` son correctos para cada nodo
- [ ] Las posiciones están definidas `[x, y]`
- [ ] `validate_workflow` pasa sin errores
- [ ] Todas las propiedades requeridas están configuradas

## 🔗 Referencias

- [claude.md](./claude.md) - Reglas completas actualizadas
- [mi-primer-flujo.json](./mi-primer-flujo.json) - Ejemplo funcional
- [n8n-mcp Documentation](./n8n-mcp/README.md)
- [n8n-skills Documentation](./n8n-skills/README.md)

## 💡 Casos de Uso Exitosos

### Flujo Simple Desplegado
- **Nombre**: ¡Hola desde n8n!
- **ID**: 18eyAgWjjRkB4Krt
- **Nodos**: Manual Trigger → Set
- **Estado**: ✅ Funcionando
- **Lección**: Agregar `"notice": ""` al Manual Trigger fue la clave

## 🎯 Próximos Pasos

Con este conocimiento, ahora puedes:
1. ✅ Crear flujos simples con confianza
2. ✅ Desplegar flujos más complejos
3. ✅ Debuggear errores de despliegue rápidamente
4. ✅ Usar plantillas como base
5. ✅ Validar antes de desplegar

---

**Última actualización**: 8 de Abril, 2026
**Flujos desplegados exitosamente**: 1
**Tasa de éxito**: 100% (después de aplicar estas lecciones)
