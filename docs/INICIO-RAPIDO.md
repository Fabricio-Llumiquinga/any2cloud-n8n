# 🚀 Inicio Rápido

## ¿Qué puedes hacer ahora?

Tu proyecto está completamente configurado. Puedes empezar a crear flujos de trabajo de n8n inmediatamente.

## 🎯 Primeros Pasos

### 1. Verifica la Configuración

Pregunta a Claude:
```
¿Está configurado correctamente el MCP de n8n?
```

### 2. Explora las Herramientas Disponibles

```
Muéstrame qué herramientas de n8n-mcp tengo disponibles
```

### 3. Busca Plantillas

```
Busca plantillas simples para principiantes
```

### 4. Crea tu Primer Flujo

```
Crea un flujo de trabajo simple que:
1. Reciba un webhook
2. Envíe los datos a Slack
```

## 📚 Ejemplos Listos para Usar

Revisa la carpeta `ejemplos/` para ver casos de uso completos:

- **webhook-a-slack.md** - Flujo básico de webhook a notificación
- **ai-agent-chatbot.md** - Chatbot con IA y memoria
- **buscar-plantillas.md** - Cómo buscar y usar plantillas

## 🔧 Comandos Útiles

### Buscar Nodos
```
Busca nodos de n8n para enviar emails
```

### Obtener Información de un Nodo
```
Muéstrame cómo configurar el nodo HTTP Request
```

### Validar Configuración
```
Valida esta configuración de nodo antes de usarla
```

### Crear Flujo de Trabajo
```
Crea un flujo de trabajo que [describe lo que necesitas]
```

### Desplegar a n8n
```
Despliega este flujo de trabajo en mi instancia n8n
```

### Listar Flujos Existentes
```
Muéstrame todos los flujos de trabajo en mi instancia n8n
```

## 💡 Tips para Mejores Resultados

### 1. Sé Específico
❌ "Crea un flujo de trabajo"
✅ "Crea un flujo de trabajo que reciba webhooks POST, extraiga el campo 'email' y lo guarde en PostgreSQL"

### 2. Menciona Validación
```
Valida el flujo antes de desplegarlo
```

### 3. Pide Explicaciones
```
Explícame cómo funciona este flujo de trabajo
```

### 4. Itera
```
Agrega manejo de errores al flujo anterior
```

### 5. Usa Plantillas
```
Busca una plantilla similar y modifícala para mi caso
```

## 🎓 Flujo de Trabajo Recomendado

1. **Describe** lo que necesitas
2. **Revisa** la arquitectura propuesta
3. **Valida** la configuración
4. **Prueba** en desarrollo
5. **Despliega** a producción

## 🔍 Exploración

### Ver Skills Disponibles
Las skills se activan automáticamente, pero puedes explorarlas en:
```
.kiro/skills/
```

### Ver Configuración MCP
```
.kiro/settings/mcp.json
```

### Ver Reglas de Claude
```
claude.md
```

## 🚨 Recordatorios Importantes

1. **Nunca edites flujos de producción directamente**
2. **Siempre valida antes de desplegar**
3. **Haz backups de flujos importantes**
4. **Prueba en desarrollo primero**

## 🆘 ¿Necesitas Ayuda?

### Pregunta a Claude
```
¿Cómo puedo [lo que necesitas hacer]?
```

### Revisa la Documentación
- `README.md` - Visión general del proyecto
- `claude.md` - Reglas completas
- `ejemplos/` - Casos de uso

### Recursos Externos
- [Documentación n8n](https://docs.n8n.io)
- [n8n-mcp GitHub](https://github.com/czlonkowski/n8n-mcp)
- [n8n-skills GitHub](https://github.com/czlonkowski/n8n-skills)

## 🎉 ¡Listo!

Ahora puedes crear flujos de trabajo de n8n profesionales usando solo lenguaje natural con Claude Code.

**Empieza con algo simple y ve aumentando la complejidad.**

### Ejemplo para Empezar Ahora

```
Crea un flujo de trabajo de prueba que:
1. Se active manualmente
2. Obtenga la fecha y hora actual
3. Envíe un mensaje a Slack diciendo "Hola desde n8n! La hora es [hora]"

Valídalo y muéstrame el JSON.
```

¡Diviértete automatizando! 🚀
