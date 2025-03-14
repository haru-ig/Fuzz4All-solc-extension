pragma solidity ^0.8.0;
contract Test {
    event myEvent(uint a, uint b);
    uint256 constant public id;
    constructor () { id = 0; }
    function setID(uint256 _id) public {





        uint x = id;
        x = 1;
    }
    function setID2(uint256 _id) public {
        id = _id;
    }
}
