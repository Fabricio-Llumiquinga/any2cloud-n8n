# 🛠️ Comandos Útiles para Claude

Esta es una referencia rápida de comandos que puedes usar con Claude para trabajar con n8n.

## 🔍 Exploración

### Verificar Configuración
```
¿Está configurado correctamente el MCP de n8n?
```

### Listar Herramientas Disponibles
```
Muéstrame todas las herramientas MCP de n8n disponibles
```

### Ver Documentación de Herramienta
```
Muéstrame la documentación de la herramienta search_nodes
```

## 🔎 Búsqueda

### Buscar Nodos
```
Busca nodos para enviar emails
Busca nodos de base de datos
Busca nodos con capacidad de IA
Busca nodos de Slack con ejemplos de configuración
```

### Buscar Plantillas
```
Busca plantillas simples para principiantes
Busca plantillas de webhook_processing
Busca plantillas que usen Slack y Google Sheets
Busca plantillas para automatización de email
Busca plantillas que requieran OpenAI
```

### Información de Nodos
```
Muéstrame cómo configurar el nodo HTTP Request
Dame información detallada del nodo Slack
Muéstrame las propiedades de autenticación del nodo Gmail
Muéstrame la documentación del nodo AI Agent
```

## 🏗️ Construcción

### Crear Flujos Simples
```
Crea un flujo que reciba un webhook y envíe a Slack
Crea un flujo que se ejecute cada hora y consulte una API
Crea un flujo que procese archivos CSV
```

### Crear Flujos con IA
```
Crea un chatbot con AI Agent y OpenAI
Crea un flujo que use embeddings para búsqueda semántica
Crea un agente de IA con memoria de conversación
```

### Crear Flujos Complejos
```
Crea un flujo que:
1. Reciba webhooks
2. Valide los datos
3. Guarde en base de datos
4. Envíe notificación a Slack
5. Responda al webhook
```

### Usar Plantillas
```
Busca una plantilla de sincronización de datos y modifícala para mi caso
Despliega la plantilla #1234 en mi instancia
Toma la plantilla de chatbot y agrégale memoria de conversación
```

## ✅ Validación

### Validar Nodos
```
Valida esta configuración de nodo antes de usarla
Verifica que todos los campos requeridos estén configurados
Valida el nodo HTTP Request con estos parámetros
```

### Validar Flujos
```
Valida este flujo de trabajo antes de desplegarlo
Verifica las conexiones entre nodos
Valida las expresiones n8n en este flujo
```

## 🚀 Despliegue

### Gestión de Flujos
```
Lista todos los flujos en mi instancia n8n
Muéstrame los flujos activos
Obtén el flujo con ID abc123
```

### Crear y Actualizar
```
Crea este flujo en mi instancia n8n
Actualiza el flujo abc123 agregando manejo de errores
Agrega un nodo de Slack al flujo existente
```

### Probar Flujos
```
Prueba el flujo abc123 con estos datos
Ejecuta el webhook del flujo abc123
Verifica que el flujo funcione correctamente
```

### Gestión de Versiones
```
Muéstrame el historial de versiones del flujo abc123
Revierte el flujo abc123 a la versión anterior
Crea un backup del flujo antes de modificarlo
```

## 🔧 Mantenimiento

### Auditoría
```
Audita la seguridad de mi instancia n8n
Busca secretos hardcodeados en los flujos
Verifica webhooks sin autenticación
```

### Credenciales
```
Lista las credenciales configuradas
Muéstrame qué credenciales necesita este flujo
Crea una credencial para Slack
```

### Ejecuciones
```
Muéstrame las últimas ejecuciones del flujo abc123
Lista las ejecuciones fallidas
Obtén detalles de la ejecución xyz789
```

### Salud del Sistema
```
Verifica la salud de mi instancia n8n
Comprueba la conectividad con la API
Muéstrame el estado de los flujos activos
```

## 🎨 Modificación

### Agregar Funcionalidad
```
Agrega manejo de errores a este flujo
Agrega un filtro que solo procese items con status "activo"
Agrega logging a cada paso del flujo
Agrega una notificación cuando el flujo termine
```

### Optimización
```
Optimiza este flujo para mejor rendimiento
Reduce el número de nodos en este flujo
Simplifica la lógica de este flujo
```

### Debugging
```
¿Por qué falla este flujo?
Ayúdame a debuggear este error de validación
¿Qué está mal con esta configuración de nodo?
```

## 📊 Análisis

### Entender Flujos
```
Explícame cómo funciona este flujo de trabajo
¿Qué hace cada nodo en este flujo?
Documenta este flujo de trabajo
```

### Comparación
```
Compara estas dos configuraciones de nodo
¿Cuál es la diferencia entre estos dos flujos?
¿Qué plantilla es mejor para mi caso de uso?
```

## 💡 Aprendizaje

### Mejores Prácticas
```
¿Cuáles son las mejores prácticas para flujos de webhook?
¿Cómo debo estructurar un flujo con AI Agent?
¿Cómo manejo errores correctamente en n8n?
```

### Patrones
```
Muéstrame patrones comunes para procesamiento de datos
¿Qué patrón debo usar para sincronización de datos?
Explícame el patrón de webhook processing
```

### Expresiones
```
¿Cómo accedo a datos de otro nodo?
¿Cómo uso expresiones n8n correctamente?
¿Cómo accedo a datos de webhook en expresiones?
```

## 🔄 Flujos de Trabajo Comunes

### Webhook → Procesamiento → Notificación
```
Crea un flujo que reciba webhooks, procese los datos y notifique a Slack
```

### Scheduled → API → Base de Datos
```
Crea un flujo que cada hora consulte una API y guarde en PostgreSQL
```

### Webhook → AI Agent → Respuesta
```
Crea un chatbot que reciba mensajes, use IA para responder y guarde el historial
```

### File Upload → Procesamiento → Storage
```
Crea un flujo que procese archivos CSV y guarde los datos en una base de datos
```

### Multi-Step Automation
```
Crea un flujo que:
1. Se active con un webhook
2. Valide los datos
3. Consulte una API externa
4. Transforme los datos
5. Guarde en base de datos
6. Envíe notificación
7. Responda al webhook
```

## 🎯 Tips para Mejores Resultados

### Sé Específico
```
❌ "Crea un flujo"
✅ "Crea un flujo que reciba webhooks POST con campo 'email' y lo guarde en PostgreSQL"
```

### Pide Validación
```
✅ "Valida el flujo antes de desplegarlo"
✅ "Verifica que todos los parámetros estén configurados"
```

### Itera
```
✅ "Agrega manejo de errores al flujo anterior"
✅ "Modifica el flujo para incluir logging"
```

### Usa Contexto
```
✅ "Basándote en la plantilla anterior, crea una versión para Gmail"
✅ "Toma el flujo abc123 y agrégale un filtro"
```

## 📝 Plantillas de Comandos

### Comando Completo
```
Crea un flujo de trabajo de n8n que:
1. [Trigger]
2. [Procesamiento]
3. [Acción]
4. [Manejo de errores]

Valida el flujo antes de mostrármelo.
```

### Modificación
```
Toma el flujo [ID o descripción] y:
1. [Modificación 1]
2. [Modificación 2]
3. [Modificación 3]

Valida los cambios antes de aplicarlos.
```

### Exploración
```
Busca [plantillas/nodos] para [caso de uso].
Muéstrame las [N] mejores opciones con:
- Descripción
- Complejidad
- Tiempo de configuración

Luego [acción a tomar].
```

## 🚀 Comandos Avanzados

### Batch Operations
```
Actualiza múltiples nodos en el flujo abc123:
1. Agrega timeout a todos los nodos HTTP
2. Agrega retry logic a nodos de API
3. Agrega logging a nodos críticos
```

### Workflow Patterns
```
Analiza este flujo y sugiere mejoras basadas en patrones de n8n
Refactoriza este flujo usando el patrón de webhook processing
```

### AI Workflows
```
Crea un flujo con AI Agent que:
- Use múltiples herramientas
- Tenga memoria de conversación
- Pueda buscar en documentación
- Escale a humano cuando sea necesario
```

---

**Recuerda**: Claude tiene acceso a 2,709 plantillas y 1,396 nodos. ¡Aprovéchalos!
