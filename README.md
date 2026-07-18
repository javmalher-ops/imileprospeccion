# iMile Prospección México

Sistema de prospección comercial para iMile Delivery México. Un flujo de tres agentes (ejecutados como skills de Claude) detecta empresas candidatas, encuentra a sus tomadores de decisión y redacta outreach personalizado.

## ICP (Ideal Customer Profile)

- Más de 200 envíos diarios (rango ideal 200-10,000 pedidos/día).
- Paquetes de 20 kg o menos.
- Recolección (almacén/CEDIS) en CDMX, Estado de México, Puebla o Guadalajara.
- Venta a nivel nacional (iMile entrega en 32 estados, +1300 ciudades).
- eCommerce independiente, retail D2C, distribuidor de consumo masivo o marketplace.

iMile no ofrece same-day/next-day como producto: el diferenciador es distribución eficiente a escala, no mensajería exprés.

## Pipeline

1. **Agente 1 - Empresas** (`busqueda-comercial`): detecta empresas que cumplen el ICP. Salida: tabla de 20-30 empresas priorizadas.
2. **Agente 2 - Contactos** (`prospeccion-agente-2`): encuentra decisores de logística/operaciones/eCommerce en cada empresa vía Apollo. Salida: CSV de 16 columnas por persona.
3. **Agente 3 - Campaña** (`comercial`): redacta email frío y mensaje de LinkedIn por contacto.
4. **Orquestador** (`prospeccion-agente-1`): corre los tres pasos en secuencia, genera los archivos de resultado y entrega un resumen por correo.

## Estructura del repositorio

```
resultados/
  prospeccion-historial.csv   # empresas ya prospectadas (empresa, dominio, fecha)
  leads-imile-AAAA-MM-DD.csv  # leads del día (18 columnas + linkedin_message)
  leads-imile-AAAA-MM-DD.xlsx # mismo contenido, hojas "Leads" y "Empresas"
```

## Cómo ejecutar

Corre el skill `prospeccion-agente-1` (u orquesta manualmente `busqueda-comercial` → `prospeccion-agente-2` → `comercial`). Antes de aceptar una empresa nueva, se revisa `resultados/prospeccion-historial.csv` para descartar las prospectadas en los últimos 30 días.
