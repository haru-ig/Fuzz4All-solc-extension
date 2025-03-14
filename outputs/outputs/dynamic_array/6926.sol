pragma solidity ^0.8.0;
contract Test1 {
    string[] f_1;
    constructor() {
     f_1.push("_");
    }

   string[] f_21;
   string[] memory f_2 = new string[](2);
   string[] f_2b;
    constructor() {
      f_2[143] =  "";
      f_2b[16] = "";
    }
}
