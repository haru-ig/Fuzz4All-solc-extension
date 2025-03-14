pragma solidity ^0.8.0;
contract AssignmentModulation_V10 {
    uint[] public x = new uint[](2);
    uint public w;
    uint public y1;
    uint public y2;
    uint public y3;
     constructor (uint _a, uint _b, uint _y1, uint _y2, uint _y3) public {
        x[0] = _a;
        x[1] = _b;
    }
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}
