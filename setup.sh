#!/bin/bash

# =============================================================
# Setup del proyecto n8n + Claude Code / Kiro
# Ejecutar una sola vez después de clonar el repositorio
# =============================================================

set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo ""
echo "================================================"
echo "  Setup: n8n workflows con Claude Code / Kiro"
echo "================================================"
echo ""

# 1. Clonar n8n-mcp
if [ -d "n8n-mcp" ]; then
  echo -e "${YELLOW}[skip]${NC} n8n-mcp ya existe, actualizando..."
  git -C n8n-mcp pull --quiet
else
  echo "Clonando n8n-mcp..."
  git clone --quiet https://github.com/czlonkowski/n8n-mcp.git
  echo -e "${GREEN}[ok]${NC} n8n-mcp clonado"
fi

# 2. Clonar n8n-skills
if [ -d "n8n-skills" ]; then
  echo -e "${YELLOW}[skip]${NC} n8n-skills ya existe, actualizando..."
  git -C n8n-skills pull --quiet
else
  echo "Clonando n8n-skills..."
  git clone --quiet https://github.com/czlonkowski/n8n-skills.git
  echo -e "${GREEN}[ok]${NC} n8n-skills clonado"
fi

# 3. Instalar skills en .kiro
echo "Instalando skills en .kiro/skills/..."
mkdir -p .kiro/skills
cp -r n8n-skills/skills/* .kiro/skills/
echo -e "${GREEN}[ok]${NC} 7 skills instaladas"

# 4. Crear .kiro/settings/mcp.json si no existe
mkdir -p .kiro/settings
if [ -f ".kiro/settings/mcp.json" ]; then
  echo -e "${YELLOW}[skip]${NC} .kiro/settings/mcp.json ya existe"
else
  cp .kiro/settings/mcp.json.example .kiro/settings/mcp.json 2>/dev/null || cat > .kiro/settings/mcp.json << 'EOF'
{
  "mcpServers": {
    "n8n-mcp": {
      "command": "npx",
      "args": ["n8n-mcp"],
      "env": {
        "MCP_MODE": "stdio",
        "LOG_LEVEL": "error",
        "DISABLE_CONSOLE_OUTPUT": "true",
        "N8N_API_URL": "REEMPLAZAR_CON_URL_DE_N8N",
        "N8N_API_KEY": "REEMPLAZAR_CON_API_KEY",
        "WEBHOOK_SECURITY_MODE": "moderate"
      },
      "disabled": false,
      "autoApprove": []
    }
  }
}
EOF
  echo -e "${GREEN}[ok]${NC} .kiro/settings/mcp.json creado"
  echo -e "${YELLOW}[!]${NC}  Edita .kiro/settings/mcp.json con tu N8N_API_URL y N8N_API_KEY"
fi

# 5. Verificar que npx está disponible
if ! command -v npx &> /dev/null; then
  echo -e "${RED}[error]${NC} npx no encontrado. Instala Node.js: https://nodejs.org"
  exit 1
fi
echo -e "${GREEN}[ok]${NC} npx disponible ($(npx --version))"

echo ""
echo "================================================"
echo -e "  ${GREEN}Setup completado${NC}"
echo "================================================"
echo ""
echo "Próximos pasos:"
echo "  1. Edita .kiro/settings/mcp.json con tus credenciales de n8n"
echo "  2. Abre el proyecto en Kiro"
echo "  3. Empieza a crear flujos de trabajo"
echo ""
echo "Documentación: docs/inicio-rapido.md"
echo ""
