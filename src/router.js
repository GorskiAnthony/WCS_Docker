const router = require("express").Router();

router.get("/", (req, res) => {
	res.send("Main route!");
});

router.get("/hello", (req, res) => {
	res.send("Hello World!");
});

module.exports = router;
