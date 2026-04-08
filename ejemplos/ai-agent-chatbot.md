# Ejemplo: AI Agent Chatbot

Este ejemplo muestra cómo crear un chatbot con AI Agent de n8n.

## Prompt de Ejemplo

```
Crea un flujo de trabajo de n8n con AI Agent que:

1. Reciba mensajes de usuarios vía webhook
2. Use OpenAI GPT-4 para generar respuestas inteligentes
3. Tenga memoria de conversación (últimos 10 mensajes)
4. Pueda acceder a una base de conocimiento (vector store)
5. Responda al webhook con la respuesta generada
6. Guarde el historial de conversaciones en una base de datos

El chatbot debe ser un asistente de soporte técnico que puede:
- Responder preguntas sobre productos
- Buscar en documentación
- Escalar a humano si no puede resolver

Valida el flujo antes de desplegarlo.
```

## Lo que Claude Hará

1. **Buscar plantillas** de AI Agent y chatbot
2. **Diseñar arquitectura**:
   - Webhook trigger
   - AI Agent con OpenAI
   - Vector Store para base de conocimiento
   - Memory para contexto de conversación
   - Nodos de base de datos
   - Lógica de escalamiento
3. **Configurar nodos LangChain**:
   - `@n8n/n8n-nodes-langchain.agent`
   - `@n8n/n8n-nodes-langchain.lmChatOpenAi`
   - `@n8n/n8n-nodes-langchain.memoryBufferWindow`
   - `@n8n/n8n-nodes-langchain.vectorStoreInMemory`
4. **Validar configuración** de AI
5. **Crear flujo completo**

## Componentes Clave

### AI Agent
- Modelo: GPT-4
- Temperatura: 0.7
- Max tokens: 500

### Memory
- Tipo: Buffer Window
- Tamaño: 10 mensajes

### Vector Store
- Tipo: In-Memory o Pinecone
- Embeddings: OpenAI

### Tools
- Búsqueda en documentación
- Consulta de base de datos
- Escalamiento a humano

## Datos de Entrada Esperados

```json
{
  "sessionId": "user-123",
  "message": "¿Cómo reseteo mi contraseña?",
  "userId": "user-123",
  "metadata": {
    "channel": "web",
    "timestamp": "2024-01-15T10:30:00Z"
  }
}
```

## Respuesta Esperada

```json
{
  "response": "Para resetear tu contraseña, sigue estos pasos...",
  "sessionId": "user-123",
  "needsHuman": false,
  "confidence": 0.95
}
```

## Variaciones

### Con Telegram
```
Conecta el AI Agent a un bot de Telegram en lugar de webhook
```

### Con Múltiples Modelos
```
Usa Claude para conversación y GPT-4 para búsqueda en documentación
```

### Con Herramientas Personalizadas
```
Agrega una herramienta que consulte la API de inventario
```

## Credenciales Necesarias

- OpenAI API Key
- Base de datos (PostgreSQL/MySQL)
- Pinecone API Key (opcional, para vector store)

## Consejos

- Define claramente el rol del agente
- Especifica qué herramientas necesita
- Indica el nivel de memoria requerido
- Menciona si necesitas streaming de respuestas
