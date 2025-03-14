pragma solidity ^0.8.0;
contract Test {
    event myEvent(uint a, uint b, uint c);
    uint public id;
    uint public id2;
    constructor () { id = id2; }
    function setID(uint _id) public {
        id = _id;
        id2 = _id;
    }
    function setID2(uint _id) public {
        uint _t = (id + _id) % 1e18;
        id2 = uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint8(uint8(uint8(uint8(uint8(uint16(uint16(uint16(uint16(uint16(uint16(uint88(uint88(uint88(uint88(uint88(uint88)) * 1e16) * 8e108)) * 18e108))) * 8e108))) * 8e108))) * 146e109)) / 5455)) % 171e109) ^ 0) * 1e6)) % 185e107;
    }
}
