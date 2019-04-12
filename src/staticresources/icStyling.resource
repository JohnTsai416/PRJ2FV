#boxes {
    width: 300px;
    background-color: #606060;
    padding: 5px;
    margin: 5px;
    align-items:center;
    justify-content:center;
}

.center {
    display: flex;
    justify-content: center;
}

.columnnn {
    float:left;
    width:25%;
    margin:auto;
    text-align:center;
}

.description {
    font-family: "Arial", Sans-serif;
    color:black;
    text-align: center;
    font-size: 30pt;
    vertical-align: middle;
}

.flexColumn {
    float:left; 
    margin:auto; 
    text-align:center;
    align-items: center;
    justify-content: center;
}

.footer {
    position: fixed;
    right: 0;
    bottom: 0;
    left: 0;
    height:50px;
    display:flex;
    align-items: center;
    background-color: #606060;
    border-radius: 9px 9px 0px 0px;
}

goldLine {
    display: flex;
    margin:auto;
    width: 85%;
    border-top: 1px dashed gold;
    padding: 1px;
}
h1 {
    font-family: "Arial", Sans-serif;
    color : black;
    text-align: center;
    font-size: 40pt;
    font-variant: small-caps;
}

h2 {
    font-family: "Arial", Sans-serif;
    color: black;
    text-align: center;
    font-size: 30pt;
    font-variant: all-caps;
}

hr.style18 { 
    height: 30px; 
    border-style: solid; 
    border-color: #ffffff; 
    border-width: 2px 0 0 0; 
    border-radius: 20px; 
} 

hr.style18:before { 
    display: block; 
    content: ""; 
    height: 30px; 
    margin-top: -31px; 
    border-style: solid; 
    border-color: #ffffff; 
    border-width: 0 0 1px 0; 
    border-radius: 20px; 
}

p {
    font-family: "Arial", Sans-serif;
    color: black;
    text-align: center;
    font-size: 18pt;
}

.middle {
    display: flex;
    align-items: center;
}

.miscText {
    font-family: "Arial", Sans-serif;
    color:black;
    text-align: center;
    font-size: 15pt;
    vertical-align: middle;
}

.myTable {
    display: absolute;  
    height: 200px; 
    margin: auto; 
    vertical-align: middle;
    text-align: center;
}

.locAddress {
    font-family: "Arial", Sans-serif;
    color: white;
    text-align: center;
    font-size: 10pt;
}

.locEntry {
    font-family: "Arial", Sans-serif;
    color: white;
    align-items: center;
    justify-content: center;
    text-align: center;
    font-size: 23pt;
}

redLine {
    display: flex;
    margin:auto;
    width: 85%;
    border-top: 1.4px solid red;
    padding: 1px;
}

.square {
    height: 50px;
    width: 50px;
    background-color: yellow;
}

.totalCenter{
    text-align:center;
    align-items: center;
    justify-content: center;  
}

.verticalLine {
    height:auto;
    border-left: 3px dashed red;
    padding: 10px;
}

.verticalRightLine {
    height:auto;
    border-right: 3px dashed red;
    padding: 10px;
}

.column {
  float: left;
  padding: 10px;
}
        
/* Create three unequal columns that floats next to each other */
.left, .right {
  width: 10%;
}

.middle {
  width: 35%;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}