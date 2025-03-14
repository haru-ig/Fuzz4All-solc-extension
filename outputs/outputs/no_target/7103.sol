pragma solidity ^0.8.0;
contract Test {
    uint public id;
    constructor() { id = 0; }
    function setID(uint _id) public { id = _id; }
    function setGlobalID(uint _id) public { Test._id = _id; }
    function getID() public view returns (uint) { return id; }
    uint private _id;
    modifier isID(uint _id) { if (id!= _id) { revert("wrong id"); } _; }
}
contract Test2 {
    uint public id;
    constructor() { id = 0; }
    function setID(uint _id) public isID(0x0) { id = _id; }
    function getID() public view returns (uint) { return id; }
}
contract Test3 {
    uint public id;
    constructor() { id = 0; }
    function setID(uint _id) public isID(_id) { id = _id; }
    function getID() public view returns (uint) { return id; }
}
