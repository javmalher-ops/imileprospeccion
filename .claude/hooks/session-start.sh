#!/bin/bash
set -euo pipefail

# iMile Prospección - Session Start Hook
# Verifica estructura, valida archivos y prepara el entorno para prospección

echo "🚀 Inicializando iMile Prospección..."

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-.}"
RESULTADOS_DIR="$PROJECT_DIR/resultados"
HISTORIAL_FILE="$RESULTADOS_DIR/prospeccion-historial.csv"

# 1. Crear estructura de directorios si no existe
if [ ! -d "$RESULTADOS_DIR" ]; then
    echo "📁 Creando directorio resultados..."
    mkdir -p "$RESULTADOS_DIR"
fi

# 2. Crear/validar archivo de historial
if [ ! -f "$HISTORIAL_FILE" ]; then
    echo "📝 Inicializando archivo de historial..."
    echo "empresa,dominio,fecha" > "$HISTORIAL_FILE"
fi

# 3. Mostrar estado del historial
echo "📊 Estado de prospectación:"
TOTAL_PROSPECTADAS=$(tail -n +2 "$HISTORIAL_FILE" 2>/dev/null | wc -l || echo "0")
echo "   ✓ Empresas prospectadas: $TOTAL_PROSPECTADAS"

if [ "$TOTAL_PROSPECTADAS" -gt 0 ]; then
    ULTIMA_FECHA=$(tail -n 1 "$HISTORIAL_FILE" 2>/dev/null | cut -d',' -f3 || echo "desconocida")
    echo "   ✓ Última prospección: $ULTIMA_FECHA"
fi

# 4. Verificar archivos de resultados recientes
LEADS_COUNT=$(find "$RESULTADOS_DIR" -maxdepth 1 -name "leads-imile-*.csv" -type f 2>/dev/null | wc -l)
if [ "$LEADS_COUNT" -gt 0 ]; then
    LATEST_LEADS=$(ls -t "$RESULTADOS_DIR"/leads-imile-*.csv 2>/dev/null | head -1)
    LEADS_DATE=$(basename "$LATEST_LEADS" | sed 's/leads-imile-//;s/.csv//')
    echo "   ✓ Leads más recientes: $LEADS_DATE"
fi

# 5. Validar que el repositorio está limpio para operaciones
if [ -d "$PROJECT_DIR/.git" ]; then
    GIT_STATUS=$(cd "$PROJECT_DIR" && git status --porcelain 2>/dev/null | wc -l)
    if [ "$GIT_STATUS" -eq 0 ]; then
        echo "   ✓ Repositorio limpio (listo para push)"
    else
        echo "   ⚠️  Hay cambios sin confirmar ($GIT_STATUS archivos)"
    fi
fi

echo ""
echo "✅ Sesión remota lista para prospección"
echo "   Ejecuta: run busqueda-comercial (o prospeccion-agente-1 para flujo completo)"
echo ""
