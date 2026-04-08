# 🎓 Tutorial Paso a Paso

Este tutorial te guiará desde cero hasta crear tu primer flujo de trabajo de n8n usando Claude Code.

## 📋 Requisitos Previos

- ✅ Claude Code instalado
- ✅ Este proyecto configurado
- ✅ 15 minutos de tiempo

## 🎯 Objetivo

Al final de este tutorial habrás:
1. Verificado la configuración
2. Explorado las herramientas disponibles
3. Buscado y analizado plantillas
4. Creado tu primer flujo de trabajo
5. Validado y desplegado el flujo

---

## Paso 1: Verificar Configuración (2 minutos)

### 1.1 Verifica el MCP

Pregunta a Claude:
```
¿Está configurado correctamente el MCP de n8n?
```

**Resultado esperado**: Claude debe confirmar que puede ver las herramientas MCP.

### 1.2 Verifica la Conexión a n8n

Pregunta a Claude:
```
Verifica la conexión a mi instancia n8n
```

**Resultado esperado**: Claude debe confirmar que puede conectarse a tu instancia.

### 1.3 Lista las Herramientas

Pregunta a Claude:
```
Muéstrame qué herramientas de n8n-mcp tengo disponibles
```

**Resultado esperado**: Claude debe listar las 20 herramientas MCP.

✅ **Checkpoint**: Si todo funciona, continúa. Si no, revisa [VERIFICACION.md](./VERIFICACION.md).

---

## Paso 2: Explorar Plantillas (3 minutos)

### 2.1 Busca Plantillas Simples

Pregunta a Claude:
```
Busca plantillas simples para principiantes que tomen menos de 30 minutos configurar
```

**Resultado esperado**: Claude debe mostrar plantillas filtradas por complejidad.

### 2.2 Busca por Caso de Uso

Pregunta a Claude:
```
Busca plantillas de webhook_processing
```

**Resultado esperado**: Claude debe mostrar plantillas curadas para procesamiento de webhooks.

### 2.3 Analiza una Plantilla

Elige una plantilla que te interese y pregunta:
```
Muéstrame los detalles de la plantilla #[ID]
```

**Resultado esperado**: Claude debe mostrar la estructura completa de la plantilla.

✅ **Checkpoint**: Ahora conoces cómo buscar y explorar plantillas.

---

## Paso 3: Explorar Nodos (3 minutos)

### 3.1 Busca Nodos

Pregunta a Claude:
```
Busca nodos de Slack con ejemplos de configuración
```

**Resultado esperado**: Claude debe mostrar nodos de Slack con ejemplos reales.

### 3.2 Obtén Información Detallada

Pregunta a Claude:
```
Muéstrame cómo configurar el nodo HTTP Request
```

**Resultado esperado**: Claude debe mostrar las propiedades esenciales del nodo.

### 3.3 Busca Nodos de IA

Pregunta a Claude:
```
Busca nodos con capacidad de IA
```

**Resultado esperado**: Claude debe mostrar nodos AI Agent y LangChain.

✅ **Checkpoint**: Ahora sabes cómo buscar y explorar nodos.

---

## Paso 4: Crear tu Primer Flujo (5 minutos)

### 4.1 Define el Flujo

Vamos a crear un flujo simple que:
1. Se active manualmente
2. Obtenga la fecha y hora actual
3. Muestre un mensaje

Pregunta a Claude:
```
Crea un flujo de trabajo de n8n que:
1. Se active manualmente (Manual Trigger)
2. Use un nodo Code para obtener la fecha y hora actual
3. Use un nodo Set para formatear el mensaje "Hola desde n8n! La hora es [hora]"

Valida el flujo antes de mostrármelo.
```

**Resultado esperado**: Claude debe:
1. Buscar los nodos necesarios
2. Configurarlos correctamente
3. Validar la configuración
4. Mostrarte el flujo completo

### 4.2 Revisa el Flujo

Claude te mostrará:
- La arquitectura del flujo
- Los nodos configurados
- Las conexiones entre nodos
- El resultado de la validación

**Revisa que**:
- ✅ Todos los nodos estén configurados
- ✅ Las conexiones sean correctas
- ✅ La validación haya pasado

### 4.3 Entiende el Flujo

Pregunta a Claude:
```
Explícame cómo funciona este flujo paso a paso
```

**Resultado esperado**: Claude debe explicar cada nodo y su función.

✅ **Checkpoint**: Has creado tu primer flujo de trabajo.

---

## Paso 5: Desplegar el Flujo (2 minutos)

### 5.1 Despliega a n8n

Pregunta a Claude:
```
Despliega este flujo en mi instancia n8n
```

**Resultado esperado**: Claude debe:
1. Crear el flujo en tu instancia
2. Confirmar el ID del flujo
3. Indicar si necesitas configurar credenciales

### 5.2 Verifica el Despliegue

Pregunta a Claude:
```
Verifica que el flujo se haya desplegado correctamente
```

**Resultado esperado**: Claude debe confirmar que el flujo existe en tu instancia.

### 5.3 Prueba el Flujo (Opcional)

Si quieres probar el flujo:
```
Prueba el flujo que acabamos de crear
```

**Resultado esperado**: Claude debe ejecutar el flujo y mostrarte el resultado.

✅ **Checkpoint**: Has desplegado tu primer flujo a n8n.

---

## Paso 6: Modificar el Flujo (Bonus)

### 6.1 Agrega Funcionalidad

Pregunta a Claude:
```
Modifica el flujo anterior para que también:
1. Genere un número aleatorio entre 1 y 100
2. Incluya ese número en el mensaje
```

**Resultado esperado**: Claude debe actualizar el flujo con la nueva funcionalidad.

### 6.2 Agrega Manejo de Errores

Pregunta a Claude:
```
Agrega manejo de errores al flujo
```

**Resultado esperado**: Claude debe agregar nodos de error handling.

### 6.3 Actualiza en n8n

Pregunta a Claude:
```
Actualiza el flujo en mi instancia n8n con estos cambios
```

**Resultado esperado**: Claude debe actualizar el flujo desplegado.

✅ **Checkpoint**: Has modificado y actualizado un flujo existente.

---

## 🎉 ¡Felicitaciones!

Has completado el tutorial. Ahora sabes cómo:
- ✅ Verificar la configuración
- ✅ Buscar plantillas y nodos
- ✅ Crear flujos de trabajo
- ✅ Validar configuraciones
- ✅ Desplegar a n8n
- ✅ Modificar flujos existentes

## 🚀 Próximos Pasos

### Nivel Principiante
1. Crea un flujo de webhook a Slack (ver [ejemplos/webhook-a-slack.md](./ejemplos/webhook-a-slack.md))
2. Explora más plantillas
3. Experimenta con diferentes nodos

### Nivel Intermedio
1. Crea un chatbot con IA (ver [ejemplos/ai-agent-chatbot.md](./ejemplos/ai-agent-chatbot.md))
2. Integra múltiples servicios
3. Usa expresiones n8n avanzadas

### Nivel Avanzado
1. Crea flujos con múltiples ramas
2. Implementa patrones complejos
3. Optimiza flujos existentes

## 📚 Recursos Adicionales

### Documentación
- [COMANDOS-UTILES.md](./COMANDOS-UTILES.md) - Referencia de comandos
- [FAQ.md](./FAQ.md) - Preguntas frecuentes
- [claude.md](./claude.md) - Reglas y mejores prácticas

### Ejemplos
- [webhook-a-slack.md](./ejemplos/webhook-a-slack.md)
- [ai-agent-chatbot.md](./ejemplos/ai-agent-chatbot.md)
- [buscar-plantillas.md](./ejemplos/buscar-plantillas.md)

### Comunidad
- [n8n Community](https://community.n8n.io)
- [n8n Workflows](https://n8n.io/workflows)

## 💡 Tips para Continuar

### Practica Regularmente
Crea al menos un flujo por semana para mantener la práctica.

### Explora Plantillas
Hay 2,709 plantillas disponibles. Explora diferentes categorías.

### Experimenta con IA
Los nodos AI Agent son muy poderosos. Experimenta con ellos.

### Comparte tus Flujos
Comparte tus flujos con la comunidad n8n.

### Aprende Patrones
Estudia los patrones de flujo de trabajo en [claude.md](./claude.md).

## 🎯 Desafíos Sugeridos

### Desafío 1: Webhook Básico
Crea un flujo que:
- Reciba un webhook POST
- Valide que tenga un campo "email"
- Responda con un JSON de confirmación

### Desafío 2: Integración de API
Crea un flujo que:
- Se ejecute cada hora
- Consulte una API pública (ej: weather API)
- Guarde los datos en un archivo

### Desafío 3: Chatbot Simple
Crea un flujo que:
- Reciba mensajes vía webhook
- Use OpenAI para generar respuestas
- Responda al webhook

### Desafío 4: Automatización de Email
Crea un flujo que:
- Se active con un webhook
- Envíe un email usando Gmail
- Notifique a Slack cuando se envíe

### Desafío 5: Procesamiento de Datos
Crea un flujo que:
- Lea datos de Google Sheets
- Transforme los datos
- Guarde en una base de datos

## 📊 Progreso del Tutorial

- [x] Paso 1: Verificar Configuración
- [x] Paso 2: Explorar Plantillas
- [x] Paso 3: Explorar Nodos
- [x] Paso 4: Crear Primer Flujo
- [x] Paso 5: Desplegar el Flujo
- [x] Paso 6: Modificar el Flujo (Bonus)

## 🆘 ¿Problemas?

Si encuentras problemas en algún paso:

1. Revisa [VERIFICACION.md](./VERIFICACION.md)
2. Consulta [FAQ.md](./FAQ.md)
3. Pregunta a Claude directamente
4. Revisa la documentación de [n8n-mcp](./n8n-mcp/README.md)

## 🎓 Certificación Informal

Has completado el tutorial cuando puedes:
- ✅ Crear un flujo de trabajo desde cero
- ✅ Buscar y usar plantillas
- ✅ Validar configuraciones
- ✅ Desplegar a n8n
- ✅ Modificar flujos existentes

---

**¡Felicitaciones por completar el tutorial!** 🎉

Ahora estás listo para crear flujos de trabajo de n8n profesionales usando Claude Code.

**Siguiente paso**: Elige un desafío o crea tu propio flujo de trabajo.
