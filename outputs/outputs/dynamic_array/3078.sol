pragma solidity ^0.8.0;
contract AssignmentModulation_V7 {
    uint public x;
    uint public w;
    uint[1] public y1;
    uint[1] public y2;

    constructor (uint _x, uint _y, uint _y1, uint _y2, uint _z) public {
      w = _x;
    }

    function setPairs_V4(uint _a) public {
        y1[0] = _a;
        y2 = 1;
     }

    function getAndStorePairs() public returns(uint){
        return y1[0];
    }
}
