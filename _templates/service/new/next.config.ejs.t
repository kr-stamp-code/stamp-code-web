---
to: services/<%= name %>/next.config.js
---
module.exports = (...args) => {
  return {
    basePath: '/<%= name %>',
    experimental: {
      scrollRestoration: true,
    }
  };
};