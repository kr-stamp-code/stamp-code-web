---
to: services/<%= name %>/package.json
---
{
  "name": "@services/<%= name %>",
  "description": "<%= description %>",
  "main": "index.js",
  "license": "UNLICENSED",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "eslint -c .eslintrc.js 'src/**/*.{js,jsx,ts,tsx}'",
    "lint:fix": "yarn lint --fix",
    "typecheck": "tsc --noEmit",
    "find-deadcode": "ts-prune"
  },
  "dependencies": {
    "@emotion/css": "^11.9.0",
    "@emotion/react": "^11.9.3",
    "@emotion/styled": "^11.9.3",
    "@toss/assert": "^1.1.0",
    "@toss/error-boundary": "^1.1.0",
    "@toss/react": "^1.3.0",
    "@toss/react-query": "^1.1.0",
    "@toss/use-overlay": "^1.1.0",
    "axios": "^0.27.2",
    "date-fns": "^2.29.3",
    "emotion-normalize": "^11.0.1",
    "next": "^12.2.5",
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "react-query": "npm:@tanstack/react-query@4.0.10",
    "ts-pattern": "^4.0.5"
  },
  "devDependencies": {
    "@types/node": "18.11.9",
    "@types/react": "^18.0.17",
    "@types/react-dom": "^18.0.6",
    "@typescript-eslint/eslint-plugin": "^5.29.0",
    "@typescript-eslint/parser": "^5.29.0",
    "eslint": "^8.23.0",
    "eslint-config-prettier": "^8.5.0",
    "eslint-import-resolver-typescript": "^2.7.1",
    "eslint-plugin-import": "^2.26.0",
    "eslint-plugin-jsx-a11y": "^6.6.1",
    "eslint-plugin-prettier": "^4.2.1",
    "eslint-plugin-react": "^7.31.6",
    "eslint-plugin-react-hooks": "^4.6.0",
    "prettier": "^2.7.1",
    "ts-prune": "^0.10.3",
    "typescript": "^4.7.4"
  }
}