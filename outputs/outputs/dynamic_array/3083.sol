pragma solidity ^0.8.0;
contract AssignmentModulation_V8 {
    uint[] public x;
    uint public w;
    uint public y1;
    uint public y2;
    uint public y3;
     constructor (uint _a, uint _b, uint _y1, uint _y2, uint _y3) public {
        x = new uint[](2);
        x[0] = _a;
        x[1] = _b;
    }
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V9 {
    uint[] public x;
    uint public w;
    uint public y1;
    uint public y2;
    uint public y3;
     constructor (uint[] memory _a, uint _x, uint _y, uint _y1, uint _y2, uint _y3) public {
  x = _a;
}
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}
