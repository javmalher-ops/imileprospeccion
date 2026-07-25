# 🧠 Acceso a Obsidian Vault desde Claude Code Remoto

**Estado**: ✅ CONFIGURADO Y ACTIVO

---

## 📍 Ubicación del Vault

Tu vault de Obsidian está sincronizado en:
```
.obsidian-vault/
├── fuentes-originales/
├── prospeccion-diaria/
├── transcripciones/
├── wiki/
└── *.md (tus notas)
```

---

## 🚀 Cómo Usar

### 1. Leer Tus Notas
```bash
Claude: Lee mis notas sobre [tema]
Claude: Busca en mis notas [palabra clave]
```

### 2. Guardar Conversaciones
```bash
Claude: Guarda esta nota en Obsidian
Claude: Crea una nota con los puntos clave
```

### 3. Sincronización Automática

```
TU COMPUTADORA (Obsidian Local)
        ↓ (Git Sync Plugin)
GITHUB (obsidian-ahabibis repo)
        ↓ (Claude Code remoto)
CLAUDE CODE REMOTO (esta sesión)
```

**Flujo de Cambios:**
1. Editas notas en Obsidian local
2. Git Sync las empuja a GitHub automáticamente (cada 5-10 segundos)
3. Claude Code remoto siempre tiene acceso a la última versión
4. Si Claude Code modifica notas → se guardan en GitHub → se sincronizan a tu Obsidian

---

## 📚 Comandos Disponibles

### Lectura
```
"Lee mi nota sobre prospección"
"¿Qué dicen mis notas sobre empresas eCommerce?"
"Busca todas mis referencias a 'distribuidor'"
```

### Escritura
```
"Guarda esta prospección como nota en Obsidian"
"Crea una nota con tag #prospección #iMile"
"Actualiza mi nota de contactos con estos leads"
```

### Análisis
```
"Basándome en mis notas, ¿cuál es el ICP?"
"Compara mis notas de competencia con estos leads"
"Genera un reporte basado en mis notas de julio"
```

---

## 🔄 Sincronización Detallada

### Desde Tu Computadora
1. Editas nota en Obsidian
2. Git Sync detecta cambio (automático)
3. Empuja a GitHub en segundos
4. ✅ Claude Code remoto ve cambios inmediatamente

### Desde Claude Code Remoto
1. Creo/edito nota en `.obsidian-vault/`
2. Hago `git commit` y `git push`
3. GitHub se actualiza
4. Git Sync en tu Obsidian local jala cambios
5. ✅ Tu Obsidian local se actualiza en 2-3 minutos

---

## 📂 Estructura de Carpetas Recomendada

```
obsidian-vault/
├── 01-Prospección/
│   ├── ICP-iMile.md
│   ├── Empresas-Activas.md
│   └── Leads-Calificados.md
├── 02-Reuniones/
│   └── 2026-07-25-Claude-Sync.md
├── 03-Recursos/
│   └── Plantillas.md
└── prospeccion-diaria/
    └── (Guardado automático de prospecciones)
```

---

## ✅ Checklist

- [x] Vault clonado en Claude Code remoto
- [x] Acceso a todos los archivos .md
- [x] Git Sync activo en tu Obsidian local
- [x] Auto-sync configurado
- [x] Sincronización bidireccional lista
- [x] Integración con prospección de iMile completada

---

## 🚨 Troubleshooting

| Problema | Causa | Solución |
|----------|-------|----------|
| "No veo cambios" | Git Sync tardó en sincronizar | Espera 2-3 min o recarga Obsidian |
| "Claude dice que no encuentra nota" | Aún no se sincronizó | Verifica en GitHub que exista |
| "Cambios no guardados" | No hice git push | Asegúrate de ejecutar git push |

---

## 🎯 Próximos Pasos

1. **Ahora mismo**: Prueba diciendo "Lee mis notas de Obsidian"
2. **Luego**: Crea notas con tag #prospección en Obsidian
3. **Después**: Ejecuta prospección que se guardará automáticamente

---

**Última actualización**: 2026-07-25
**Sistema**: Obsidian + Git Sync + GitHub + Claude Code Remoto
**Estado**: 100% Configurado y Operativo
