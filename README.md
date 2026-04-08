# n8n workflows con Kiro

Crea flujos de trabajo de n8n completamente funcionales usando solo lenguaje natural en Kiro (Claude Code).

## Requisitos

- [Kiro](https://kiro.dev) o Claude Code instalado
- [Node.js](https://nodejs.org) (para `npx`)
- Git
- Acceso a una instancia n8n con API Key

## Setup (una sola vez)

```bash
git clone <este-repositorio>
cd <carpeta>
./setup.sh
```

El script clona las dependencias, instala las skills y crea el archivo de configuración.

Luego edita `.kiro/settings/mcp.json` con tus credenciales:

```json
{
  "mcpServers": {
    "n8n-mcp": {
      "command": "npx",
      "args": ["n8n-mcp"],
      "env": {
        "MCP_MODE": "stdio",
        "LOG_LEVEL": "error",
        "DISABLE_CONSOLE_OUTPUT": "true",
        "N8N_API_URL": "https://tu-instancia-n8n.com",
        "N8N_API_KEY": "tu-api-key",
        "WEBHOOK_SECURITY_MODE": "moderate"
      }
    }
  }
}
```

Abre el proyecto en Kiro y ya puedes empezar.

## Cómo usarlo

Simplemente describe el flujo que necesitas en el chat de Kiro:

```
Crea un flujo que reciba un webhook y envíe una notificación a Slack
```

```
Crea un flujo que clasifique correos de Outlook y responda automáticamente
```

```
Busca plantillas para sincronizar Google Sheets con una base de datos
```

Kiro buscará nodos, validará la configuración y desplegará el flujo directamente en tu instancia n8n.

## Estructura

```
├── claude.md              ← reglas y contexto para Kiro (leer esto primero)
├── setup.sh               ← script de instalación
├── workflows/             ← flujos JSON desplegados
├── ejemplos/              ← prompts de referencia por caso de uso
├── docs/                  ← documentación detallada
└── .kiro/
    └── settings/
        ├── mcp.json           ← tus credenciales (no se versiona)
        └── mcp.json.example   ← plantilla de configuración
```

## Flujos disponibles

| Archivo | Descripción | ID en n8n |
|---------|-------------|-----------|
| `workflows/hola-desde-n8n.json` | Flujo de prueba básico | `18eyAgWjjRkB4Krt` |
| `workflows/clasificador-correos-outlook.json` | Clasifica correos con IA y responde automáticamente | `mynSixYjAAGGuIp4` |

## Documentación

- `docs/inicio-rapido.md` — primeros pasos
- `docs/lecciones-aprendidas.md` — errores comunes y soluciones
- `docs/referencia-despliegue.md` — guía rápida de despliegue
- `docs/comandos.md` — referencia de comandos para Kiro

## Notas importantes

- El archivo `.kiro/settings/mcp.json` contiene credenciales y **no se versiona**
- Cada miembro del equipo configura sus propias credenciales
- Los flujos en `workflows/` son el historial compartido del equipo
- Lee `claude.md` para entender cómo Kiro construye los flujos
