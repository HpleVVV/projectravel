//creating an api
// import express
const express = require('express');
const mongoose = require('mongoose');

const authRouter = require("./routes/auth");
//import auth_screen

//INIT
const PORT = process.env.PORT || 3000;
const app = express();
const DB = "mongodb+srv://huy:jonsnow1@cluster0.grywn.mongodb.net/?retryWrites=true&w=majority";
//middleware
app.use(express.json());
// change to json type for api to read
app.use(authRouter);
//conncetions

mongoose.connect(DB).then(() => {
       console.log('Connection Successful');
})
.catch((e) => {
       console.log(e);
});

// client -> middleware -> server -> client
//CREATING AN API
// http://<youripaddress>/hello-world

app.listen(PORT, "0.0.0.0",  () => {
       console.log(`connected at port ${PORT}`);
});




//GET, PUT, POST, DELETE, UPDATE --> CRUD

//localhost

