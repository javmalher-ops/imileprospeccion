# Integración Obsidian + Claude Code Remoto

## 🎯 Objetivo
Sincronizar tu vault de Obsidian con Claude Code en la nube para acceso completo a todas tus notas y archivos.

## 📁 Pasos de Configuración (3 minutos)

### Paso 1: Sincronizar Obsidian a Google Drive
1. Abre tu vault de Obsidian
2. Instala el plugin "Obsidian Sync" o "Google Drive Sync"
3. Sincroniza tu carpeta `~/Desktop/obsidian` a Google Drive
   - Crea una carpeta `obsidian-vault` en tu Google Drive
   - Configura sincronización bidireccional

### Paso 2: Autorizar Claude Code
- Ya tengo Google Drive conectado ✓
- Automáticamente buscaré tu carpeta `obsidian-vault`
- Tendré acceso de lectura/escritura

### Paso 3: Usar la Integración

#### **Acceder a tus notas:**
```
claude: Lee mi nota sobre [tema] de Obsidian
```

#### **Guardar conversaciones como notas:**
```
claude: Guarda esta conversación como nota en Obsidian con etiqueta #prospección
```

#### **Buscar en todas tus notas:**
```
claude: Busca en mis notas de Obsidian referencias a "empresas eCommerce"
```

## 🔄 Sincronización Automática

### Local → Google Drive
- Obsidian Sync Plugin sincroniza automáticamente
- Cambios disponibles en 2-3 minutos

### Google Drive → Claude Code
- Claude Code accede en tiempo real
- Sin delay adicional

### Claude Code → Google Drive → Local
- Creo/edito notas en Google Drive
- Tu Obsidian local sincroniza automáticamente

## 📊 Flujo de Trabajo Recomendado

```
Tu Obsidian Local
       ↓ (Sync Plugin)
   Google Drive
       ↓ (Claude Code)
   Conversaciones con Claude
       ↓
   Notas actualizadas
       ↓ (Sync Plugin)
   Tu Obsidian Local
```

## 🚀 Próximos Pasos

1. **Configura Google Drive Sync en Obsidian** (5 min)
   - Plugin: "Google Drive Sync" o "Obsidian Sync"
   - Destino: carpeta `obsidian-vault` en Google Drive
   - Modo: Bidireccional

2. **Avísame cuando esté listo**
   - Yo buscaré tu carpeta en Google Drive
   - Configuraré acceso automático

3. **Comienza a usar**
   - Pide acceso a tus notas
   - Guarda conversaciones
   - Busca información

## 🔐 Seguridad

✓ Tus credenciales de Google están seguras (en tu perfil Claude)
✓ Solo yo accedo a tu carpeta `obsidian-vault`
✓ No se comparten con terceros
✓ Encriptación en tránsito (HTTPS)

## 📞 Troubleshooting

**"No veo mi carpeta en Google Drive"**
- Asegúrate de haber sincronizado con Google Drive Sync
- Espera 2-3 minutos
- Verifica que la carpeta esté en Google Drive (drive.google.com)

**"Los cambios no se sincronizan"**
- Abre Google Drive y verifica la carpeta
- Recarga Obsidian (Ctrl+R / Cmd+R)
- Reinicia el sync plugin

**"Cambios de Claude no llegan a Obsidian"**
- Es normal, demora 2-3 minutos
- Google Drive toma ese tiempo para sincronizar
- Recarga Obsidian manualmente si es urgente

---

**Estado**: Esperando que configures Google Drive Sync  
**Tiempo estimado**: 5 minutos  
**Beneficios**: Acceso completo a todas tus notas desde Claude Code
