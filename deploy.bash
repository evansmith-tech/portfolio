#!/bin/bash
cd portfolio
hugo -t hugo-theme-stack && cd public || echo "hugo didn't compile"
read -s -p "(enter) continue?: "
git status
git add .

read commitMessage
git commit -m "$commitMessage" && git push origin main