pragma solidity ^0.8.0;
contract AssignmentModulation_V3 {
    uint[] public x;
    uint public w;
     constructor (uint _z) public {
      x = new uint[](2);
    }
    function setPairs() public {
       w = 0;
    }
    function getAndStorePairs() public returns(uint){
        return w;
    }
}
