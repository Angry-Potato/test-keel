const express = require("express");
const app = express();
const version = require("./package.json").version;

app.get("/", (req, res) =>
  res.send(
    `Hello World! I am version ${version} running in ${
      process.env.TARGET_ENV
    } My colour is ${process.env.TARGET_COLOUR}`
  )
);

app.listen(3000, () => console.log("Example app listening on port 3000!"));
