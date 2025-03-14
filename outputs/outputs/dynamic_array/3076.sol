pragma solidity ^0.8.0;
contract AssignmentModulation_V7 {
    uint[] public x;
    uint public w;
    uint public y1;
    uint public y2;
    uint public z;

    constructor(uint _x, uint _y, uint _y1, uint _y2, uint _z) public {
        x = new uint[](1);
    }
    function setPairs_V5(uint _a) public {
        w = _a;
    }
    function getAndStorePairs() public returns(uint){
        return y1;
    }
}
