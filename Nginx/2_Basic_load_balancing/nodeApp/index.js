const app = require("express")();

app.get("/", (req, res) => {
    res.send(`Hello World from nodejs ${process.env.APPID}`);
});

app.get("/app1", (req, res) => {
    res.send(`Hello World from app1 ${process.env.APPID}`);
});


app.get("/app2", (req, res) => {
    res.send(`Hello World from app2 ${process.env.APPID}`);
});

app.get("/admin", (req, res) => {
    res.send(`Hello World from admin ${process.env.APPID}`);
});

app.listen(9999);