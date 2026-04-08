# ⚡ Referencia Rápida - Despliegue de Flujos n8n

Guía rápida para desplegar flujos de trabajo sin errores.

## 🎯 Regla de Oro

**NUNCA uses `parameters: {}` vacío en ningún nodo**

## ✅ Checklist Rápido

Antes de desplegar, verifica:

```
[ ] get_node con detail: 'full' ejecutado
[ ] Cada nodo tiene al menos una propiedad en parameters
[ ] validate_node pasó sin errores
[ ] IDs únicos (UUIDs)
[ ] Conexiones correctas
```

## 📋 Plantilla de Nodo Correcto

```json
{
  "id": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "name": "Node Name",
  "type": "n8n-nodes-base.nodeType",
  "typeVersion": 1,
  "position": [x, y],
  "parameters": {
    "propertyName": "value"  // ⚠️ NUNCA vacío
  }
}
```

## 🔧 Nodos Comunes - Configuración Mínima

### Manual Trigger
```json
"parameters": {
  "notice": ""
}
```

### Set
```json
"parameters": {
  "mode": "manual",
  "assignments": {
    "assignments": [
      {
        "id": "field-1",
        "name": "fieldName",
        "type": "string",
        "value": "value"
      }
    ]
  }
}
```

### HTTP Request
```json
"parameters": {
  "method": "GET",
  "url": "https://api.example.com"
}
```

### Webhook
```json
"parameters": {
  "httpMethod": "POST",
  "path": "webhook-path"
}
```

### Code (JavaScript)
```json
"parameters": {
  "mode": "runOnceForAllItems",
  "jsCode": "return items;"
}
```

### IF
```json
"parameters": {
  "conditions": {
    "conditions": [
      {
        "id": "condition-1",
        "leftValue": "={{ $json.field }}",
        "rightValue": "value",
        "operation": "equals"
      }
    ]
  }
}
```

### Slack
```json
"parameters": {
  "resource": "message",
  "operation": "post",
  "select": "channel",
  "channelId": "C123456",
  "text": "Message"
}
```

## 🚀 Flujo de Trabajo Rápido

```bash
1. search_nodes → Encontrar nodo
2. get_node (detail: 'full') → Ver propiedades
3. validate_node → Verificar config
4. n8n_create_workflow → Desplegar
5. n8n_get_workflow → Verificar
```

## 🔍 Comandos Esenciales

### Ver Propiedades de un Nodo
```javascript
get_node({
  nodeType: 'n8n-nodes-base.nodeName',
  detail: 'full'
})
```

### Validar Configuración
```javascript
validate_node({
  nodeType: 'n8n-nodes-base.nodeName',
  config: { /* tu config */ },
  mode: 'full'
})
```

### Crear Workflow
```javascript
n8n_create_workflow({
  name: "Workflow Name",
  nodes: [ /* nodos */ ],
  connections: { /* conexiones */ }
})
```

## ⚠️ Errores Comunes y Soluciones

### Error: "parameters: Required"
**Causa**: `parameters: {}` vacío
**Solución**: Agrega al menos una propiedad

### Error: "Invalid type"
**Causa**: Tipo de dato incorrecto
**Solución**: Usa `get_node` para ver el tipo correcto

### Error: "Missing required field"
**Causa**: Falta un campo obligatorio
**Solución**: Usa `validate_node` para identificar campos requeridos

### Error: "Node not found"
**Causa**: Nombre de nodo incorrecto en conexiones
**Solución**: Verifica que los nombres coincidan exactamente

## 💡 Tips Rápidos

1. **Usa plantillas**: `search_templates` para encontrar ejemplos
2. **Valida siempre**: Antes de desplegar, valida
3. **IDs únicos**: Genera UUIDs únicos para cada nodo
4. **Propiedades explícitas**: No confíes en valores predeterminados
5. **Verifica después**: Usa `n8n_get_workflow` para confirmar

## 📊 Estructura de Conexiones

```json
"connections": {
  "Source Node Name": {
    "main": [
      [
        {
          "node": "Target Node Name",
          "type": "main",
          "index": 0
        }
      ]
    ]
  }
}
```

### IF Node (dos salidas)
```json
"connections": {
  "IF Node": {
    "main": [
      [
        {
          "node": "True Handler",
          "type": "main",
          "index": 0
        }
      ],
      [
        {
          "node": "False Handler",
          "type": "main",
          "index": 0
        }
      ]
    ]
  }
}
```

## 🎯 Ejemplo Completo Funcional

```json
{
  "name": "Ejemplo Simple",
  "nodes": [
    {
      "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
      "name": "Manual Trigger",
      "type": "n8n-nodes-base.manualTrigger",
      "typeVersion": 1,
      "position": [240, 300],
      "parameters": {
        "notice": ""
      }
    },
    {
      "id": "b2c3d4e5-f6a7-8901-bcde-f12345678901",
      "name": "Set Data",
      "type": "n8n-nodes-base.set",
      "typeVersion": 3.4,
      "position": [460, 300],
      "parameters": {
        "mode": "manual",
        "assignments": {
          "assignments": [
            {
              "id": "field-1",
              "name": "message",
              "type": "string",
              "value": "Hello World"
            }
          ]
        }
      }
    }
  ],
  "connections": {
    "Manual Trigger": {
      "main": [
        [
          {
            "node": "Set Data",
            "type": "main",
            "index": 0
          }
        ]
      ]
    }
  },
  "settings": {
    "executionOrder": "v1"
  }
}
```

## 🔗 Enlaces Útiles

- [LECCIONES-APRENDIDAS.md](./LECCIONES-APRENDIDAS.md) - Documentación completa
- [claude.md](./claude.md) - Reglas completas
- [mi-primer-flujo.json](./mi-primer-flujo.json) - Ejemplo funcional

---

**Recuerda**: Siempre usa `get_node` antes de crear un nodo nuevo.
