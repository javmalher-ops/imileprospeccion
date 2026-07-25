# Configuración de APIs Externas

## Apollo.io (Búsqueda de Contactos)

El Agente 2 (`prospeccion-agente-2`) usa Apollo.io para encontrar contactos en empresas.

### Requisitos

- ✓ Cuenta activa en [Apollo.io](https://www.apollo.io)
- ✓ API Key configurada en tu perfil de Claude
- ✓ Créditos disponibles (cada búsqueda consume créditos)

### Cómo Verificar Configuración

1. En Claude Code, ve a Settings → Connectors
2. Busca "Apollo" o "apollo.io"
3. Verifica que esté conectada y autorizada
4. Si no aparece, instala el conector de Apollo

### Troubleshooting

| Problema | Solución |
|----------|----------|
| "API Key inválida" | Revisa tu cuenta Apollo.io y regenera la key |
| "Límite de créditos alcanzado" | Compra más créditos en Apollo.io (panel admin) |
| "Contactos no encontrados" | El dominio puede tener contactos privados o restricciones |
| "Error de conexión" | Verifica tu conexión a internet y permisos de firewall |

### Cómo Funciona

1. El Agente 1 envía lista de dominios de empresas
2. El Agente 2 busca contactos en Apollo por:
   - Dominio de la empresa
   - Departamentos: Logística, Operaciones, eCommerce
   - Cargos: Director, Gerente, Head, VP
3. Apollo retorna contactos con emails verificados
4. Los datos se enriquecen con información de LinkedIn

## Futuras Integraciones

### Email Masivo
Cuando necesites enviar campañas, se integrará:
- Outreach.io
- HubSpot
- Clay

### Enriquecimiento Adicional
- LinkedIn URLs verificadas
- Datos de compañía (ingresos, empleados, etc)
- Historial de cambios en contactos

## Notas de Seguridad

⚠️ **IMPORTANTE**: Nunca guardes credenciales en el repositorio

- Las API Keys deben estar en tu perfil de Claude Code (Settings → Connectors)
- Las credenciales NO se guardan en `.env` ni en el repo
- Cada sesión remota carga automáticamente las credenciales de tu cuenta

## Verificar Conexión Antes de Prospeccionar

```bash
# Esto verifica que todas las conexiones estén activas
run prospeccion-agente-1 --check-apis
```

Si alguna API falla, el agente te indicará qué configurar.

---

**Última actualización**: 2026-07-25
