---
to: services/<%= name %>/tsconfig.json
---
{
  "extends": "../../tsconfig.service.json",
  "compilerOptions": {
    "baseUrl": "src",
    "noUncheckedIndexedAccess": true
  },
  "include": [
    "next-env.d.ts",
    "**/*.ts",
    "**/*.tsx"
  ],
  "exclude": [
    "node_modules"
  ]
}
