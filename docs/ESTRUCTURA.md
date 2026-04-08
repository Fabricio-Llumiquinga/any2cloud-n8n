# 📁 Estructura del Proyecto

```
n8n/
├── 📄 README.md                    # Visión general del proyecto
├── 📄 INICIO-RAPIDO.md            # Guía de inicio rápido
├── 📄 VERIFICACION.md             # Checklist de verificación
├── 📄 COMANDOS-UTILES.md          # Referencia de comandos
├── 📄 ESTRUCTURA.md               # Este archivo
├── 📄 claude.md                   # Reglas completas para Claude
├── 📄 .env.example                # Ejemplo de configuración
├── 📄 .gitignore                  # Archivos ignorados por git
│
├── 📁 .kiro/                      # Configuración de Kiro/Claude Code
│   ├── 📁 settings/
│   │   └── 📄 mcp.json           # Configuración del MCP de n8n
│   │
│   └── 📁 skills/                # Skills de Claude Code
│       ├── 📁 n8n-code-javascript/
│       ├── 📁 n8n-code-python/
│       ├── 📁 n8n-expression-syntax/
│       ├── 📁 n8n-mcp-tools-expert/
│       ├── 📁 n8n-node-configuration/
│       ├── 📁 n8n-validation-expert/
│       └── 📁 n8n-workflow-patterns/
│
├── 📁 ejemplos/                   # Ejemplos de uso
│   ├── 📄 webhook-a-slack.md     # Flujo básico
│   ├── 📄 ai-agent-chatbot.md    # Chatbot con IA
│   └── 📄 buscar-plantillas.md   # Búsqueda de plantillas
│
├── 📁 n8n-mcp/                    # Repositorio del MCP (clonado)
│   ├── 📄 README.md
│   ├── 📄 package.json
│   ├── 📁 src/
│   ├── 📁 dist/
│   ├── 📁 docs/
│   └── ...
│
└── 📁 n8n-skills/                 # Repositorio de skills (clonado)
    ├── 📄 README.md
    ├── 📁 skills/
    ├── 📁 docs/
    ├── 📁 evaluations/
    └── ...
```

## 📚 Descripción de Archivos Principales

### Documentación Principal

#### README.md
- Visión general del proyecto
- Configuración completa
- Recursos y enlaces
- Herramientas MCP disponibles

#### INICIO-RAPIDO.md
- Primeros pasos
- Comandos básicos
- Ejemplos para empezar
- Tips para mejores resultados

#### VERIFICACION.md
- Checklist de configuración
- Pruebas de funcionamiento
- Verificación de skills
- Solución de problemas

#### COMANDOS-UTILES.md
- Referencia rápida de comandos
- Ejemplos por categoría
- Plantillas de comandos
- Comandos avanzados

#### claude.md
- Reglas completas para Claude
- Principios fundamentales
- Proceso de flujo de trabajo
- Advertencias críticas
- Estrategias de validación

### Configuración

#### .kiro/settings/mcp.json
```json
{
  "mcpServers": {
    "n8n-mcp": {
      "command": "npx",
      "args": ["n8n-mcp"],
      "env": {
        "MCP_MODE": "stdio",
        "N8N_API_URL": "...",
        "N8N_API_KEY": "..."
      }
    }
  }
}
```

#### .env.example
Plantilla para variables de entorno:
- N8N_API_URL
- N8N_API_KEY
- Configuración MCP
- Opciones de telemetría

### Skills

Cada skill en `.kiro/skills/` contiene:
- `SKILL.md` - Documentación de la skill
- `skill.json` - Metadatos
- Evaluaciones y ejemplos

#### Skills Disponibles:

1. **n8n-expression-syntax**
   - Sintaxis de expresiones n8n
   - Variables principales
   - Gotchas comunes

2. **n8n-mcp-tools-expert**
   - Uso de herramientas MCP
   - Formatos de parámetros
   - Mejores prácticas

3. **n8n-workflow-patterns**
   - Patrones arquitectónicos
   - Ejemplos reales
   - Guías de selección

4. **n8n-validation-expert**
   - Interpretación de errores
   - Flujo de validación
   - Solución de problemas

5. **n8n-node-configuration**
   - Configuración de nodos
   - Dependencias de propiedades
   - Patrones comunes

6. **n8n-code-javascript**
   - JavaScript en nodos de código
   - Acceso a datos
   - Patrones de producción

7. **n8n-code-python**
   - Python en nodos de código
   - Limitaciones
   - Workarounds

### Ejemplos

#### webhook-a-slack.md
- Flujo básico de webhook a notificación
- Configuración paso a paso
- Variaciones comunes

#### ai-agent-chatbot.md
- Chatbot con AI Agent
- Configuración de IA
- Memoria y herramientas

#### buscar-plantillas.md
- Búsqueda de plantillas
- Filtros disponibles
- Uso y modificación

## 🔧 Repositorios Clonados

### n8n-mcp/
Servidor MCP de n8n con:
- 1,396 nodos documentados
- 2,709 plantillas
- Herramientas de validación
- API de gestión

### n8n-skills/
Skills de Claude Code con:
- 7 skills complementarias
- Evaluaciones de calidad
- Documentación detallada
- Ejemplos de uso

## 🎯 Flujo de Uso

```
1. Lee INICIO-RAPIDO.md
   ↓
2. Verifica con VERIFICACION.md
   ↓
3. Consulta COMANDOS-UTILES.md
   ↓
4. Revisa ejemplos/
   ↓
5. Empieza a crear flujos
```

## 📊 Estadísticas

- **Archivos de documentación**: 7
- **Skills instaladas**: 7
- **Ejemplos incluidos**: 3
- **Nodos disponibles**: 1,396
- **Plantillas disponibles**: 2,709
- **Herramientas MCP**: 20

## 🔗 Enlaces Rápidos

### Documentación Local
- [README.md](./README.md)
- [INICIO-RAPIDO.md](./INICIO-RAPIDO.md)
- [VERIFICACION.md](./VERIFICACION.md)
- [COMANDOS-UTILES.md](./COMANDOS-UTILES.md)
- [claude.md](./claude.md)

### Ejemplos
- [Webhook a Slack](./ejemplos/webhook-a-slack.md)
- [AI Agent Chatbot](./ejemplos/ai-agent-chatbot.md)
- [Buscar Plantillas](./ejemplos/buscar-plantillas.md)

### Repositorios
- [n8n-mcp README](./n8n-mcp/README.md)
- [n8n-skills README](./n8n-skills/README.md)

### Externos
- [n8n-mcp GitHub](https://github.com/czlonkowski/n8n-mcp)
- [n8n-skills GitHub](https://github.com/czlonkowski/n8n-skills)
- [Documentación n8n](https://docs.n8n.io)

## 🎨 Personalización

### Agregar Más Ejemplos
Crea archivos `.md` en `ejemplos/` con:
- Descripción del caso de uso
- Prompt de ejemplo
- Resultado esperado
- Variaciones

### Modificar Configuración
Edita `.kiro/settings/mcp.json` para:
- Cambiar URL de n8n
- Actualizar API key
- Ajustar configuración MCP

### Agregar Reglas Personalizadas
Edita `claude.md` para:
- Agregar reglas específicas de tu equipo
- Incluir patrones personalizados
- Documentar convenciones

## 🚀 Próximos Pasos

1. ✅ Verifica la configuración con VERIFICACION.md
2. 📖 Lee INICIO-RAPIDO.md
3. 🎯 Prueba los ejemplos
4. 💡 Consulta COMANDOS-UTILES.md
5. 🏗️ Empieza a crear tus flujos

---

**¿Necesitas ayuda?** Pregunta a Claude usando los comandos en COMANDOS-UTILES.md
