# Ejemplo: Webhook a Slack

Este es un ejemplo de cómo pedirle a Claude que cree un flujo de trabajo simple.

## ⚠️ Lección Aprendida

**IMPORTANTE**: Todos los nodos deben tener al menos una propiedad en `parameters`. Nunca uses `parameters: {}` vacío.

Ver [LECCIONES-APRENDIDAS.md](../LECCIONES-APRENDIDAS.md) para más detalles.

## Prompt de Ejemplo

```
Crea un flujo de trabajo de n8n que:

1. Reciba un webhook POST en la ruta /notificar
2. Extraiga los siguientes campos del body:
   - titulo
   - mensaje
   - prioridad (alta, media, baja)
3. Envíe una notificación a Slack al canal #alertas con formato:
   - 🔴 Para prioridad alta
   - 🟡 Para prioridad media
   - 🟢 Para prioridad baja
4. Incluya manejo de errores

Valida el flujo de trabajo antes de mostrármelo.
```

## Lo que Claude Hará

1. **Buscar plantillas** relevantes de webhook a Slack
2. **Mostrar arquitectura** propuesta para tu aprobación
3. **Configurar nodos**:
   - Webhook trigger
   - Nodo IF para evaluar prioridad
   - Nodos Slack para cada nivel de prioridad
   - Manejo de errores
4. **Validar** la configuración completa
5. **Crear el flujo** en formato JSON
6. **Opcionalmente desplegar** a tu instancia n8n

## Resultado Esperado

Un flujo de trabajo completo y validado que puedes:
- Ver en formato JSON
- Desplegar directamente a tu instancia n8n
- Modificar según tus necesidades

## Variaciones

### Con Base de Datos
```
Agrega un nodo que guarde cada notificación en una tabla de PostgreSQL
```

### Con Respuesta
```
Haz que el webhook responda con un JSON confirmando que se recibió la notificación
```

### Con Filtrado
```
Solo envía a Slack si la prioridad es alta o media
```

## Consejos

- Sé específico sobre los campos de datos
- Menciona si necesitas credenciales específicas
- Indica si quieres desplegar o solo ver el JSON
- Pide validación antes de desplegar
