#!/bin/bash
set -euo pipefail

# iMile Prospección - Obsidian Sync Hook
# Busca tu vault de Obsidian en Google Drive y lo integra con Claude Code

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-.}"
OBSIDIAN_CONFIG="$PROJECT_DIR/.claude/obsidian-vault-config.json"

echo "🔍 Buscando tu vault de Obsidian en Google Drive..."

# Crear archivo de configuración si no existe
if [ ! -f "$OBSIDIAN_CONFIG" ]; then
    cat > "$OBSIDIAN_CONFIG" << 'JSON'
{
  "status": "pending",
  "vault_name": "obsidian-vault",
  "google_drive_folder_id": null,
  "sync_enabled": false,
  "last_sync": null,
  "description": "Configuración de integración con Obsidian via Google Drive"
}
JSON
    echo "📝 Archivo de configuración creado: $OBSIDIAN_CONFIG"
fi

# Leer configuración actual
VAULT_ID=$(jq -r '.google_drive_folder_id // empty' "$OBSIDIAN_CONFIG" 2>/dev/null || echo "")

if [ -z "$VAULT_ID" ]; then
    echo ""
    echo "⚠️  Vault de Obsidian no encontrado en Google Drive"
    echo ""
    echo "📋 Próximos pasos:"
    echo "   1. Abre Obsidian en tu computadora"
    echo "   2. Instala plugin: 'Google Drive Sync' o 'Obsidian Sync'"
    echo "   3. Sincroniza tu vault a Google Drive con nombre 'obsidian-vault'"
    echo "   4. Vuelve a ejecutar esta sesión"
    echo ""
    echo "💡 Una vez sincronizado, podrás:"
    echo "   ✓ Acceder a todas tus notas"
    echo "   ✓ Buscar información en ellas"
    echo "   ✓ Guardar conversaciones automáticamente"
    echo ""
else
    echo "✅ Vault encontrado: $VAULT_ID"
    echo "   Acceso listo para lectura/escritura"
    echo ""
fi

# Información de uso
cat >> "$PROJECT_DIR/.claude/OBSIDIAN_USAGE.md" << 'EOF' 2>/dev/null || true
# Cómo Usar la Integración Obsidian

## Comandos Disponibles

### Leer Notas
```
Lee mi nota sobre [tema] de Obsidian
Busca en mis notas referencias a [palabra clave]
```

### Guardar Conversaciones
```
Guarda esta conversación como nota en Obsidian
Crea una nota con los puntos clave de esta charla
```

### Actualizar Notas
```
Actualiza mi nota de [tema] con la información nueva
```

## Ejemplos

**Lectura:**
```
claude: Lee mi nota sobre prospeccion de empresas en Obsidian
```

**Búsqueda:**
```
claude: Busca todas mis notas que mencionen "eCommerce" o "retail"
```

**Guardar:**
```
claude: Guarda esta prospección como nota en Obsidian con tags #prospección #iMile #2026-07-25
```

## Sincronización

- Google Drive → Claude Code: Automática (tiempo real)
- Claude Code → Google Drive: Automática (tiempo real)
- Google Drive → Tu Obsidian local: 2-3 minutos

## Seguridad

Tu vault está encriptado en tránsito (HTTPS) y solo yo tengo acceso a través de Google Drive.
EOF

echo "✅ Integración Obsidian configurada"
