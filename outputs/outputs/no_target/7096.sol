pragma solidity ^0.8.0;
contract Test {
    uint public id;
    constructor () { id = 0; }
    function setID(uint _id) public returns (bool) {id = _id; return true;}
}
