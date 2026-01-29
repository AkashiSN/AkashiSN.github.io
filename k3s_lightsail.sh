#!/bin/bash
set -euo pipefail
curl -fsSL https://raw.githubusercontent.com/AkashiSN/Server-Config/main/terraform/aws/modules/lightsail/scripts/k3s_provisioner.sh | bash
