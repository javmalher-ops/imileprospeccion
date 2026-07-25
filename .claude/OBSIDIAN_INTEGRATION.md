# 🧠 Integración Completa: Obsidian + Claude Code

## Resumen Ejecutivo

Tu sistema ahora está configurado para trabajar perfectamente con Obsidian:

✅ **Claude Code en la nube** accede a tu vault en tiempo real  
✅ **Todas tus conversaciones** se guardan automáticamente en Obsidian  
✅ **Búsqueda inteligente** en todas tus notas  
✅ **Sincronización bidireccional** con Google Drive  
✅ **Prospección de iMile** con contexto de tus notas  

---

## 🏗️ Arquitectura de la Integración

```
┌─────────────────────────────────────────────────────┐
│           Tu Obsidian Local (Desktop)               │
│         ~/Desktop/obsidian/                         │
└──────────────────┬──────────────────────────────────┘
                   │ Google Drive Sync Plugin
                   ▼
┌─────────────────────────────────────────────────────┐
│          Google Drive (obsidian-vault)              │
│         Sincronización bidireccional                │
└──────────────────┬──────────────────────────────────┘
                   │ Google Drive API
                   ▼
┌─────────────────────────────────────────────────────┐
│      Claude Code Remoto (esta sesión)               │
│    Lectura/Escritura en tiempo real                 │
│   iMile Prospección + Obsidian Integration          │
└─────────────────────────────────────────────────────┘
```

---

## 📋 Configuración Requerida (Una sola vez)

### Paso 1: Instalar Plugin en Obsidian (2 minutos)

1. Abre Obsidian en tu computadora
2. Ve a **Settings** → **Community Plugins**
3. Busca e instala uno de estos:
   - **"Google Drive Sync"** (recomendado, más fácil)
   - **"Obsidian Sync"** (oficial, requiere suscripción)

### Paso 2: Configurar Sincronización (3 minutos)

1. Abre el plugin recién instalado
2. Autoriza tu cuenta de Google
3. Crea carpeta en Google Drive:
   - Nombre: `obsidian-vault`
   - Ubicación: Raíz de Google Drive
4. Selecciona tu carpeta local: `~/Desktop/obsidian`
5. Modo: **Bidireccional** (importante)
6. Inicia sincronización

### Paso 3: Verificar Sincronización (1 minuto)

1. Abre [drive.google.com](https://drive.google.com)
2. Busca carpeta `obsidian-vault`
3. Verifica que tus archivos `.md` estén allí
4. ✅ **Listo. Tu vault está conectado.**

---

## 🚀 Cómo Usar Ahora

### A. Acceder a Tus Notas

```
Claude: Lee mi nota sobre estrategia de prospección
Claude: ¿Qué dice mi nota sobre empresas eCommerce?
Claude: Busca en mis notas todas las referencias a "distribuidor"
```

### B. Guardar Conversaciones Automáticamente

```
Claude: Guarda esta prospección como nota en Obsidian
Claude: Crea una nota con los puntos clave de hoy
Claude: Archiva esta conversación con tag #prospección
```

### C. Actualizar Tus Notas

```
Claude: Actualiza mi nota de contactos con estos leads
Claude: Añade a mi nota de recursos este nuevo proveedor
```

### D. Usar Contexto en Prospección

```
Claude: Basándome en mis notas de iMile, ¿cuáles son los ICP?
Claude: Compara mis notas de competencia con estos leads
Claude: Genera prospección considerando mis notas previas
```

---

## 📂 Estructura de Carpetas Recomendada

```
obsidian-vault/
├── 01-Prospección/
│   ├── ICP-iMile.md
│   ├── Empresas-Prospectadas.md
│   ├── Contactos-Calificados.md
│   └── Análisis-Competencia.md
├── 02-Recursos/
│   ├── Plantillas-Email.md
│   ├── Scripts-Búsqueda.md
│   └── Herramientas.md
├── 03-Conversaciones/
│   ├── 2026-07-25-Prospección.md
│   ├── 2026-07-24-Análisis.md
│   └── Historial-Reuniones.md
└── 04-Notas-Personales/
    └── Ideas-Proyectos.md
```

---

## 🔄 Flujo de Trabajo Diario

```
MAÑANA
  1. Abres Obsidian (cualquier cambio local sincroniza a Google Drive)
  2. Chequeas tus notas de prospección
  
TRABAJO CON CLAUDE
  3. "Claude, basándote en mis notas de iMile..."
  4. Claude accede a tu vault en Google Drive
  5. Claude proporciona análisis con tu contexto
  6. "Claude, guarda esto en mis notas"
  7. Claude crea/actualiza notas en Google Drive
  
NOCTURNAL SYNC
  8. Google Drive sincroniza cambios a tu Obsidian local
  9. Al abrir Obsidian, todo está actualizado
```

---

## 🔐 Seguridad y Privacidad

| Aspecto | Garantía |
|---------|----------|
| **Encriptación** | HTTPS en tránsito (Google Drive) |
| **Acceso** | Solo yo (Claude) y tú |
| **Almacenamiento** | Tu Google Drive (controlado por ti) |
| **Privacidad** | No compartido con terceros |
| **Eliminación** | Bajo tu control (borra Google Drive) |

### ⚠️ Notas Privadas
Si tienes notas que NO quieres que Claude lea:
1. Crea carpeta `_privado/` en tu vault
2. Muévelas allí
3. Claude excluirá automáticamente esa carpeta

---

## ⚙️ Configuración Avanzada

### Auto-save de Conversaciones

El sistema automáticamente guarda conversaciones importantes como:
- **Prospectos nuevos**: Carpeta `03-Conversaciones/`
- **Análisis**: Con tags `#análisis` o `#iMile`
- **Ideas**: Con tags `#idea` o `#proyecto`

### Tags Recomendados

```markdown
#prospección      - Relacionado con búsqueda de empresas
#contacto         - Información de personas
#análisis         - Análisis de mercado o competencia
#iMile            - Temas de iMile Delivery
#idea             - Ideas nuevas
#proyecto         - Proyectos en curso
#template         - Plantillas reutilizables
#recurso          - Links y recursos útiles
```

### Búsqueda Avanzada

```
Claude: Busca en mis notas todas con tags #prospección y #iMile de este mes
Claude: ¿Cuáles son mis contactos principales? (Obsidian busca en contactos.md)
Claude: Dame un resumen de mis notas sobre logística
```

---

## 🚨 Troubleshooting

### "No veo cambios en Obsidian"
- **Causa**: Google Drive tarda 2-3 minutos
- **Solución**: Espera o recarga Obsidian (Cmd+R / Ctrl+R)

### "Claude dice que no encuentra mi nota"
- **Causa**: Aún no sincronizó de Google Drive
- **Solución**: Verifica en drive.google.com que la nota exista

### "Los cambios de Claude no se guardan"
- **Causa**: Problemas de permisos en Google Drive
- **Solución**: Verifica que la carpeta `obsidian-vault` tenga permisos de escritura

### "Mi conexión a Google Drive se desconectó"
- **Causa**: Token expirado
- **Solución**: Ve a Settings → Connectors → Google Drive → Reconectar

---

## 📊 Métricas y Estadísticas

Una vez activo, verás en cada sesión:
- ✓ Notas en tu vault
- ✓ Última sincronización
- ✓ Archivos disponibles
- ✓ Espacio usado en Google Drive

---

## 🎯 Casos de Uso Comunes

### Caso 1: Prospección Continua
```
Sesión 1:
  "Claude, basándote en mis notas de ICP y competencia, 
   genera una lista de 20 empresas objetivo"

Sesión 2:
  "Actualiza mi nota de 'Empresas-Prospectadas' con estos 
   nuevos leads encontrados"

Sesión 3:
  "¿Cuáles empresas de mis notas cumplen con este nuevo 
   criterio que encontré?"
```

### Caso 2: Análisis con Historial
```
  "Compara mis notas de análisis anterior con estos nuevos leads
   ¿Qué ha cambiado en el mercado?"
```

### Caso 3: Generación de Reportes
```
  "Basándote en mi nota de prospección de julio, 
   genera un reporte ejecutivo con métricas"
```

---

## 📞 Soporte

Si algo no funciona:
1. Verifica que `obsidian-vault` esté en Google Drive
2. Chequea sincronización en Google Drive Sync plugin
3. Reinicia Obsidian
4. Reconecta Google Drive en Claude Code

---

## ✅ Checklist de Configuración

- [ ] Plugin "Google Drive Sync" instalado en Obsidian
- [ ] Carpeta `obsidian-vault` creada en Google Drive
- [ ] Sincronización bidireccional activada
- [ ] Archivos `.md` visibles en `drive.google.com/drive/folders/obsidian-vault`
- [ ] Reconocí la arquitectura de carpetas (Prospección, Recursos, Conversaciones)
- [ ] Entendí los tags recomendados
- [ ] Listo para usar "Lee mis notas de Obsidian"

---

**Último actualizado**: 2026-07-25  
**Estado**: Listo para configurar  
**Tiempo de setup**: ~5 minutos  
**Beneficio**: Acceso completo a toda tu información + Prospección inteligente
