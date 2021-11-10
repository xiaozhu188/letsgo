const packageJson = require("./package.json");
const isProd = process.env.NODE_ENV === "production";

module.exports = {
  lintOnSave: false,
  outputDir: "dist",
  publicPath: isProd ? `/${packageJson.name}` : "/",
};
