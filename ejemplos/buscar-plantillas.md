# Ejemplo: Buscar y Usar Plantillas

n8n tiene 2,709 plantillas disponibles. Aquí te muestro cómo buscarlas y usarlas.

## Búsqueda por Palabra Clave

```
Busca plantillas de n8n para automatización de email con Gmail
```

Claude buscará plantillas que contengan "email" y "gmail" en su descripción.

## Búsqueda por Tarea

```
Busca plantillas para webhook_processing
```

Tareas disponibles:
- `ai_automation` - Automatización con IA
- `data_sync` - Sincronización de datos
- `webhook_processing` - Procesamiento de webhooks
- `email_automation` - Automatización de email
- `slack_integration` - Integración con Slack
- `data_transformation` - Transformación de datos
- `file_processing` - Procesamiento de archivos
- `scheduling` - Tareas programadas
- `api_integration` - Integración de APIs
- `database_operations` - Operaciones de base de datos

## Búsqueda por Nodos

```
Busca plantillas que usen los nodos Slack y Google Sheets
```

Claude buscará plantillas que incluyan ambos nodos.

## Búsqueda por Metadatos

### Por Complejidad
```
Busca plantillas simples para principiantes que tomen menos de 30 minutos configurar
```

Niveles de complejidad:
- `simple` - Para principiantes
- `medium` - Nivel intermedio
- `complex` - Avanzado

### Por Servicio
```
Busca plantillas que requieran OpenAI
```

### Por Audiencia
```
Busca plantillas para marketers
```

Audiencias:
- `marketers` - Marketing
- `developers` - Desarrolladores
- `analysts` - Analistas

## Usar una Plantilla

Una vez que encuentres una plantilla:

```
Despliega la plantilla #1234 en mi instancia n8n
```

Claude:
1. Obtendrá la plantilla completa
2. Validará la configuración
3. Aplicará auto-correcciones si es necesario
4. La desplegará en tu instancia
5. Te mostrará qué credenciales necesitas configurar

## Ejemplo Completo

```
Busca plantillas para sincronizar datos de Google Sheets a una base de datos.
Muéstrame las 3 mejores opciones con:
- Descripción
- Autor
- Complejidad
- Tiempo de configuración

Luego despliega la más simple en mi instancia.
```

## Modificar una Plantilla

```
Toma la plantilla #1234 y modifícala para:
- Agregar un filtro que solo procese filas con status "activo"
- Enviar una notificación a Slack cuando termine
- Guardar errores en un archivo de log
```

## Explorar Plantillas Populares

```
Muéstrame las plantillas más populares de:
- Automatización con IA
- Integración con Slack
- Procesamiento de webhooks
```

## Consejos

- Las plantillas incluyen atribución al autor original
- Siempre valida antes de desplegar
- Puedes modificar plantillas según tus necesidades
- Las plantillas pueden necesitar credenciales adicionales
- Usa filtros para encontrar plantillas más relevantes

## Filtros Útiles

### Para Principiantes
```
complexity: "simple"
maxSetupMinutes: 30
```

### Para Proyectos Rápidos
```
maxSetupMinutes: 15
```

### Por Servicio Específico
```
requiredService: "openai"
requiredService: "slack"
requiredService: "gmail"
```

### Por Rol
```
targetAudience: "marketers"
targetAudience: "developers"
```
