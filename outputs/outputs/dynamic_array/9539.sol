pragma solidity ^0.8.0;
contract Main2 {
    address payable []public payableArray;
    constructor () { payableArray[0] = payable(1); payableArray[1] = payable(2); payableArray[2] = payable(3); payableArray[3] = payable(4); }
}
