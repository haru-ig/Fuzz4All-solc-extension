pragma solidity ^0.8.0;
contract AssignmentModulation_V4 {
    uint[] public x;
    uint public w;
    uint public y;
     constructor (uint _z) public {
      x = new uint[](2);
    }
    function setPairs_V4(uint _a) public {
       w = _a;
    }
    function getAndStorePairs() public returns(uint){
        return w;
    }
}
