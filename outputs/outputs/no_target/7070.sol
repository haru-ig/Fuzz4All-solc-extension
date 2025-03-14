pragma solidity ^0.8.0;
contract Test {
    event myEvent(uint a, uint b, uint c);
    uint public id;
    uint public id2;
    constructor () { id = id2; }
    function setID2(uint _id) public {
        id2 = _id;
    }
    function setID(uint _id) public {
        id = _id;
    }
}
