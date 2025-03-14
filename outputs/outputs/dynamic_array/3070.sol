pragma solidity ^0.8.0;
contract AssignmentModulation_V6 {
    uint[] public x;
    uint[] public y;
     constructor(uint _a, uint _b, uint _c) public {
      x = [1,2,3];
      y = [4,5,6];
    }
    function assignArrayToNewArrayAndShift_V6(uint _a, uint _b, uint _c) public {
      x = [ _a, _b, _c];
    }
    function getArray(uint _a) public returns(uint){
        return x[4];
    }
}
