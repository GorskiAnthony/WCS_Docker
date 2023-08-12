require("dotenv").config();

const express = require("express");
const logger = require("morgan");

const app = express();
const router = require("./router");

app.use(logger("dev"));
app.use(router);

module.exports = app;
