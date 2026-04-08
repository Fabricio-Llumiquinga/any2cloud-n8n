# ✅ Checklist de Verificación

Usa este checklist para verificar que todo esté correctamente configurado.

## 📋 Configuración Básica

- [x] Repositorio n8n-mcp clonado
- [x] Repositorio n8n-skills clonado
- [x] Skills copiadas a `.kiro/skills/`
- [x] Configuración MCP en `.kiro/settings/mcp.json`
- [x] Archivo `claude.md` con reglas completas
- [x] Ejemplos creados en carpeta `ejemplos/`

## 🔧 Configuración MCP

Verifica que `.kiro/settings/mcp.json` contenga:

- [x] `command: "npx"`
- [x] `args: ["n8n-mcp"]`
- [x] `MCP_MODE: "stdio"`
- [x] `N8N_API_URL` configurada
- [x] `N8N_API_KEY` configurada
- [x] `WEBHOOK_SECURITY_MODE: "moderate"`

## 🎓 Skills Instaladas

Verifica que existan en `.kiro/skills/`:

- [x] n8n-code-javascript
- [x] n8n-code-python
- [x] n8n-expression-syntax
- [x] n8n-mcp-tools-expert
- [x] n8n-node-configuration
- [x] n8n-validation-expert
- [x] n8n-workflow-patterns

## 🧪 Pruebas de Funcionamiento

### 1. Verificar Conexión MCP

Pregunta a Claude:
```
¿Puedes ver las herramientas de n8n-mcp?
```

**Resultado esperado**: Claude debe listar las herramientas MCP disponibles.

### 2. Verificar Conexión a n8n

Pregunta a Claude:
```
Verifica la conexión a mi instancia n8n
```

**Resultado esperado**: Claude debe confirmar que puede conectarse a tu instancia.

### 3. Buscar Nodos

Pregunta a Claude:
```
Busca nodos de Slack
```

**Resultado esperado**: Claude debe mostrar nodos relacionados con Slack.

### 4. Buscar Plantillas

Pregunta a Claude:
```
Busca plantillas simples para principiantes
```

**Resultado esperado**: Claude debe mostrar plantillas filtradas por complejidad.

### 5. Crear Flujo Simple

Pregunta a Claude:
```
Crea un flujo de trabajo simple que se active manualmente y muestre "Hola Mundo"
```

**Resultado esperado**: Claude debe crear un flujo de trabajo válido.

## 🔍 Verificación de Skills

Las skills se activan automáticamente. Prueba cada una:

### n8n Expression Syntax
```
¿Cómo accedo a datos de webhook en una expresión n8n?
```

### n8n MCP Tools Expert
```
¿Cuál es la diferencia entre validate_node con mode='minimal' y mode='full'?
```

### n8n Workflow Patterns
```
¿Qué patrones de flujo de trabajo recomiendas para procesamiento de webhooks?
```

### n8n Validation Expert
```
¿Cómo interpreto errores de validación en n8n?
```

### n8n Node Configuration
```
¿Cómo configuro el nodo HTTP Request con autenticación?
```

### n8n Code JavaScript
```
¿Cómo accedo a datos de webhook en un nodo de código JavaScript?
```

### n8n Code Python
```
¿Puedo usar pandas en un nodo de código Python de n8n?
```

## 🚨 Solución de Problemas

### MCP No Se Conecta

1. Verifica que `npx` esté instalado:
   ```bash
   npx --version
   ```

2. Verifica la configuración en `.kiro/settings/mcp.json`

3. Reinicia Claude Code

### Skills No Se Activan

1. Verifica que las carpetas existan en `.kiro/skills/`
2. Cada skill debe tener un archivo `SKILL.md`
3. Reinicia Claude Code

### No Puede Conectar a n8n

1. Verifica que la URL sea accesible:
   ```bash
   curl http://alb-n8n-1609613565.us-east-1.elb.amazonaws.com/api/v1/workflows
   ```

2. Verifica que el API Key sea válido

3. Verifica que `WEBHOOK_SECURITY_MODE` esté en "moderate"

### Errores de Validación

1. Siempre usa `validate_node` antes de construir
2. Usa `mode='minimal'` para verificación rápida
3. Usa `mode='full'` para validación completa
4. Revisa los mensajes de error detallados

## 📊 Estado del Proyecto

Una vez completado el checklist:

- ✅ **Configuración**: Completa
- ✅ **MCP**: Conectado
- ✅ **Skills**: Instaladas
- ✅ **n8n**: Accesible
- ✅ **Ejemplos**: Disponibles
- ✅ **Documentación**: Completa

## 🎉 ¡Todo Listo!

Si todos los checks están marcados, tu proyecto está completamente configurado y listo para usar.

**Siguiente paso**: Lee `INICIO-RAPIDO.md` y empieza a crear flujos de trabajo.

## 📞 Soporte

Si encuentras problemas:

1. Revisa `README.md` para documentación general
2. Revisa `claude.md` para reglas específicas
3. Consulta los ejemplos en `ejemplos/`
4. Revisa la documentación de [n8n-mcp](https://github.com/czlonkowski/n8n-mcp)
5. Revisa la documentación de [n8n-skills](https://github.com/czlonkowski/n8n-skills)
