# ❓ Preguntas Frecuentes (FAQ)

## 🚀 Inicio

### ¿Qué es este proyecto?
Un proyecto configurado para crear flujos de trabajo de n8n completamente funcionales usando solo Claude Code. Incluye el servidor MCP de n8n, 7 skills especializadas y toda la documentación necesaria.

### ¿Qué necesito para empezar?
- Claude Code instalado
- Node.js (para npx)
- Acceso a una instancia n8n (ya configurada en este proyecto)
- Nada más - todo está listo para usar

### ¿Cómo verifico que todo funciona?
Lee `VERIFICACION.md` y sigue el checklist. Luego pregunta a Claude:
```
¿Puedes ver las herramientas de n8n-mcp?
```

## 🔧 Configuración

### ¿Dónde está la configuración del MCP?
En `.kiro/settings/mcp.json`. Este archivo contiene la URL de tu instancia n8n y el API key.

### ¿Puedo cambiar la instancia n8n?
Sí, edita `.kiro/settings/mcp.json` y cambia:
- `N8N_API_URL` - URL de tu instancia
- `N8N_API_KEY` - Tu API key

### ¿Qué son las skills?
Son módulos de conocimiento especializado que se activan automáticamente cuando Claude detecta que son relevantes. Están en `.kiro/skills/`.

### ¿Cómo actualizo las skills?
```bash
cd n8n-skills
git pull
cp -r skills/* ../.kiro/skills/
```

## 🎯 Uso

### ¿Cómo creo un flujo de trabajo?
Simplemente describe lo que necesitas a Claude:
```
Crea un flujo que reciba un webhook y envíe a Slack
```

### ¿Claude puede desplegar directamente a n8n?
Sí, si tu instancia n8n está configurada (ya lo está en este proyecto). Solo pide:
```
Despliega este flujo en mi instancia n8n
```

### ¿Cómo busco plantillas?
```
Busca plantillas para [tu caso de uso]
```

Claude tiene acceso a 2,709 plantillas.

### ¿Puedo modificar plantillas existentes?
Sí:
```
Toma la plantilla #1234 y modifícala para [tus necesidades]
```

## 🛠️ Herramientas

### ¿Qué herramientas MCP están disponibles?
20 herramientas en total:
- 7 de documentación (búsqueda, validación, plantillas)
- 13 de gestión n8n (crear, actualizar, ejecutar flujos)

Ver lista completa en `README.md`.

### ¿Cuándo usar validate_node vs validate_workflow?
- `validate_node`: Para validar un nodo individual antes de construir
- `validate_workflow`: Para validar el flujo completo antes de desplegar

### ¿Qué es mode='minimal' vs mode='full'?
- `minimal`: Verificación rápida de campos requeridos (<100ms)
- `full`: Validación completa con sugerencias y correcciones

## 📚 Plantillas

### ¿Cuántas plantillas hay disponibles?
2,709 plantillas de flujos de trabajo reales.

### ¿Cómo filtro plantillas?
Por complejidad:
```
Busca plantillas simples para principiantes
```

Por tarea:
```
Busca plantillas de webhook_processing
```

Por servicio:
```
Busca plantillas que requieran OpenAI
```

### ¿Las plantillas incluyen créditos al autor?
Sí, siempre. Claude automáticamente incluye:
- Nombre del autor
- Username
- Link a la plantilla original

## 🔍 Nodos

### ¿Cuántos nodos están disponibles?
1,396 nodos:
- 812 nodos principales (core)
- 584 nodos de comunidad (516 verificados)

### ¿Cómo busco un nodo específico?
```
Busca nodos para [funcionalidad]
```

Ejemplos:
- "Busca nodos para enviar emails"
- "Busca nodos de base de datos"
- "Busca nodos con capacidad de IA"

### ¿Puedo ver ejemplos de configuración?
Sí:
```
Busca nodos de Slack con ejemplos de configuración
```

O:
```
get_node({nodeType: 'n8n-nodes-base.slack', includeExamples: true})
```

## ⚠️ Errores Comunes

### "MCP no se conecta"
1. Verifica que npx esté instalado: `npx --version`
2. Verifica `.kiro/settings/mcp.json`
3. Reinicia Claude Code

### "No puedo conectar a n8n"
1. Verifica que la URL sea accesible
2. Verifica que el API key sea válido
3. Verifica `WEBHOOK_SECURITY_MODE: "moderate"`

### "Skills no se activan"
1. Verifica que existan en `.kiro/skills/`
2. Cada skill debe tener `SKILL.md`
3. Reinicia Claude Code

### "Errores de validación"
1. Usa `validate_node` antes de construir
2. Lee los mensajes de error detallados
3. Nunca confíes en valores predeterminados

## 🎓 Mejores Prácticas

### ¿Debo usar plantillas o crear desde cero?
Siempre busca plantillas primero. Hay 2,709 disponibles y pueden ahorrarte mucho tiempo.

### ¿Cuándo validar?
Siempre. Usa validación multi-nivel:
1. `validate_node(mode='minimal')` - Antes de construir
2. `validate_node(mode='full')` - Antes de construir
3. `validate_workflow` - Antes de desplegar

### ¿Debo configurar todos los parámetros?
Sí. NUNCA confíes en valores predeterminados. Los valores predeterminados son la causa #1 de fallos en tiempo de ejecución.

### ¿Cómo manejo errores?
Siempre incluye manejo de errores en tus flujos:
```
Agrega manejo de errores a este flujo
```

## 🔐 Seguridad

### ¿Es seguro el API key en el archivo?
El archivo `.kiro/settings/mcp.json` está en `.gitignore` por defecto. No se subirá a git.

### ¿Puedo auditar mi instancia?
Sí:
```
Audita la seguridad de mi instancia n8n
```

### ¿Cómo protejo webhooks?
Usa autenticación en tus webhooks. Claude puede ayudarte:
```
Agrega autenticación al webhook de este flujo
```

## 💡 Expresiones n8n

### ¿Cómo accedo a datos de webhook?
Los datos de webhook están en `$json.body`:
```javascript
{{ $json.body.email }}  // ✅ Correcto
{{ $json.email }}       // ❌ Incorrecto
```

### ¿Cómo accedo a datos de otro nodo?
```javascript
{{ $node["NodeName"].json }}
```

### ¿Cuándo NO usar expresiones?
En nodos de código. Usa JavaScript/Python directamente.

## 🤖 AI Agents

### ¿Puedo crear chatbots?
Sí, usa el nodo AI Agent:
```
Crea un chatbot con AI Agent y OpenAI
```

### ¿Qué modelos de IA puedo usar?
- OpenAI (GPT-3.5, GPT-4)
- Claude (Anthropic)
- Modelos locales
- Otros via API

### ¿Cómo agrego memoria al chatbot?
```
Agrega memoria de conversación al chatbot
```

Claude configurará el nodo de memoria automáticamente.

## 📊 Gestión

### ¿Cómo listo mis flujos?
```
Lista todos los flujos en mi instancia n8n
```

### ¿Cómo actualizo un flujo existente?
```
Actualiza el flujo abc123 agregando [funcionalidad]
```

### ¿Puedo hacer rollback?
Sí:
```
Revierte el flujo abc123 a la versión anterior
```

### ¿Cómo pruebo un flujo?
```
Prueba el flujo abc123 con estos datos
```

## 🔄 Actualizaciones

### ¿Cómo actualizo n8n-mcp?
```bash
cd n8n-mcp
git pull
npm install
npm run build
```

### ¿Cómo actualizo las skills?
```bash
cd n8n-skills
git pull
cp -r skills/* ../.kiro/skills/
```

### ¿Con qué frecuencia debo actualizar?
Revisa actualizaciones mensualmente o cuando:
- Haya nuevos nodos en n8n
- Haya nuevas features en n8n-mcp
- Encuentres bugs

## 📖 Aprendizaje

### ¿Dónde aprendo más sobre n8n?
- [Documentación oficial n8n](https://docs.n8n.io)
- [Plantillas n8n](https://n8n.io/workflows)
- Pregunta a Claude - tiene acceso a toda la documentación

### ¿Hay ejemplos incluidos?
Sí, en la carpeta `ejemplos/`:
- webhook-a-slack.md
- ai-agent-chatbot.md
- buscar-plantillas.md

### ¿Cómo aprendo patrones de flujo de trabajo?
```
¿Qué patrones de flujo de trabajo recomiendas para [caso de uso]?
```

La skill n8n-workflow-patterns tiene 5 patrones probados.

## 🚀 Avanzado

### ¿Puedo hacer operaciones por lotes?
Sí:
```
Actualiza múltiples nodos en el flujo abc123:
1. [Cambio 1]
2. [Cambio 2]
3. [Cambio 3]
```

### ¿Cómo conecto nodos IF correctamente?
Usa el parámetro `branch`:
```json
{
  "type": "addConnection",
  "source": "if-node-id",
  "target": "handler-id",
  "branch": "true"  // o "false"
}
```

### ¿Puedo usar Python en nodos de código?
Sí, pero con limitaciones. No hay librerías externas (pandas, requests, etc.). Usa JavaScript para el 95% de casos.

## 🎯 Casos de Uso

### Automatización de Email
```
Crea un flujo que procese emails entrantes y los categorice con IA
```

### Sincronización de Datos
```
Crea un flujo que sincronice Google Sheets con PostgreSQL cada hora
```

### Chatbot
```
Crea un chatbot con memoria que responda preguntas sobre productos
```

### Procesamiento de Webhooks
```
Crea un flujo que reciba webhooks, valide datos y notifique a Slack
```

### Integración de APIs
```
Crea un flujo que consulte múltiples APIs y combine los resultados
```

## 🆘 Soporte

### ¿Dónde obtengo ayuda?
1. Pregunta a Claude directamente
2. Revisa la documentación en este proyecto
3. Consulta [n8n-mcp GitHub](https://github.com/czlonkowski/n8n-mcp)
4. Consulta [n8n-skills GitHub](https://github.com/czlonkowski/n8n-skills)

### ¿Cómo reporto un bug?
- Para n8n-mcp: [GitHub Issues](https://github.com/czlonkowski/n8n-mcp/issues)
- Para n8n-skills: [GitHub Issues](https://github.com/czlonkowski/n8n-skills/issues)

### ¿Puedo contribuir?
Sí! Ambos proyectos son open source (MIT License).

---

**¿No encuentras tu pregunta?** Pregunta a Claude:
```
¿Cómo puedo [tu pregunta]?
```
