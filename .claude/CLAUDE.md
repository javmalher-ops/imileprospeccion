# iMile Prospección - Claude Code Setup

## 🎯 Descripción del Proyecto

Sistema de prospección comercial automatizado para iMile Delivery México que detecta empresas candidatas, encuentra tomadores de decisión y redacta outreach personalizado usando tres agentes especializados.

## 🏗️ Arquitectura

```
Busqueda Comercial → Búsqueda de Contactos → Redacción de Campaña → Exportación de Resultados
(Agente 1)          (Agente 2 + Apollo)      (Agente 3)            (CSV + XLSX)
```

### Agentes Disponibles

- **`busqueda-comercial`** - Detecta empresas que cumplen el ICP (Ideal Customer Profile)
- **`prospeccion-agente-2`** - Busca contactos en empresas usando Apollo.io
- **`comercial`** - Redacta emails fríos y mensajes de LinkedIn personalizados
- **`prospeccion-agente-1`** - Orquestador que ejecuta todo el flujo en secuencia

## 📋 ICP (Ideal Customer Profile)

Empresas que cumplen TODOS estos criterios:

- ✓ 200+ envíos diarios (rango ideal: 200-10,000 pedidos/día)
- ✓ Paquetes ≤ 20 kg
- ✓ CEDIS/almacén en: CDMX, EdoMex, Puebla o Guadalajara
- ✓ Venta nacional (iMile entrega en 32 estados)
- ✓ Tipo: eCommerce independiente, retail D2C, distribuidor masivo o marketplace

## 🚀 Uso Rápido (Sesión Remota)

Al abrir una sesión, el hook automático ejecuta:
- Verifica estructura de directorios (`resultados/`)
- Valida archivo de historial (`prospeccion-historial.csv`)
- Muestra estado de prospecciones anteriores
- Confirma que el repositorio está limpio

### Ejecutar Prospección

```bash
# Opción 1: Flujo completo (recomendado)
run prospeccion-agente-1

# Opción 2: Paso por paso
run busqueda-comercial
run prospeccion-agente-2
run comercial
```

## 📁 Estructura de Salidas

```
resultados/
├── prospeccion-historial.csv    # Empresas ya prospectadas (previene duplicados)
├── leads-imile-YYYY-MM-DD.csv   # Leads del día (16 columnas)
└── leads-imile-YYYY-MM-DD.xlsx  # Mismo contenido en Excel (hojas: Leads, Empresas)
```

### Columnas en CSV/XLSX

| Campo | Descripción |
|-------|-------------|
| empresa | Nombre de la empresa |
| dominio | Dominio web (.com.mx, etc) |
| tamaño_envios | Estimado de envíos diarios |
| industria | Categoría (eCommerce, retail, etc) |
| ubicacion_cedis | Ciudad donde recolecta |
| contacto_nombre | Nombre del tomador de decisión |
| contacto_email | Email |
| contacto_linkedin | Perfil LinkedIn |
| posicion | Cargo (Gerente, Director, etc) |
| departamento | Logística, Operaciones, eCommerce |
| telefono | Teléfono de contacto |
| empresa_linkedin | URL LinkedIn de la empresa |
| email_message | Draft de email frío |
| linkedin_message | Draft de mensaje LinkedIn |

## ⚙️ Configuración Remota

El hook automático (`session-start.sh`) garantiza que cada sesión remota esté 100% lista sin intervención manual:

- ✅ Verifica estructura de directorios
- ✅ Valida archivos de historial
- ✅ Muestra métricas de progreso
- ✅ Confirma estado del repositorio
- ✅ Proporciona instrucciones de uso

## 🔄 Evitar Duplicados

Antes de prospeccionar una empresa nueva, se revisa `prospeccion-historial.csv`:
- Si fue prospectada hace **< 30 días**: se omite
- Si fue prospectada hace **≥ 30 días**: se considera viable para re-prospectar

## 📊 Métricas de Seguimiento

Revisa `resultados/prospeccion-historial.csv` para:
- Número total de empresas prospectadas
- Fecha de última prospección
- Patrón de ciclo de ventas (30 días)

## 🛠️ Troubleshooting

### "No se encuentran empresas"
- Revisa el historial: ¿ya fueron prospectadas recientemente?
- Varía criterios de búsqueda en el Agente 1

### "No se encuentran contactos"
- Verifica credenciales de Apollo.io en el Agente 2
- Algunos dominios pueden tener contactos privados

### "Cambios sin confirmar"
- El hook detectó archivos modificados
- Revisa `git status` y confirma cambios antes de prospeccionar

## 📞 Próximos Pasos

1. Ejecuta `run prospeccion-agente-1` para iniciar una prospección
2. Revisa los resultados en `resultados/`
3. Comparte CSV/XLSX con el equipo de ventas
4. El sistema actualiza automáticamente `prospeccion-historial.csv`

## 🧠 Integración Obsidian

Este proyecto ahora está **completamente integrado con tu vault de Obsidian**:

- 📖 Accede a todas tus notas en tiempo real
- 💾 Guarda conversaciones automáticamente
- 🔍 Busca información en todo tu vault
- ↔️ Sincronización bidireccional con Google Drive

**Configuración requerida**: ~5 minutos  
Consulta: [OBSIDIAN_INTEGRATION.md](.claude/OBSIDIAN_INTEGRATION.md)

---

**Última actualización**: Sesión Remote Claude Code  
**Entorno**: Remoto (Cloud)  
**Hook**: Sincrónico (garantiza readiness antes de iniciar)  
**Integraciones**: Obsidian ✓, Google Drive ✓, Apollo ✓
