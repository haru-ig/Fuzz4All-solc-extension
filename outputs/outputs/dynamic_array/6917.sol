pragma solidity ^0.8.0;
contract Test2 {
    uint public arrayFoo[5];
    constructor() {
        arrayFoo.push("renamed");
        arrayFoo.push("");
    }
}
