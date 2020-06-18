#!/bin/sh
NODE_VERSION="stable"
NPM_VERSION="stable"

npm init -y

echo $NODE_VERSION > .node-version
echo $NPM_VERSION > .npm-version
cat > .npmrc << EOF
also=dev
save-exact=true
engine-strict=true
EOF

npm install -S ts-node typescript @types/node
npm install -S @typescript-eslint/eslint-plugin @typescript-eslint/parser
npm install -S eslint eslint-config-airbnb eslint-plugin-jsx-a11y eslint-plugin-react eslint-config-prettier eslint-plugin-import eslint-plugin-prettier prettier pretty-quick

mkdir src
touch src/index.ts
