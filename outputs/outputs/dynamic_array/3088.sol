pragma solidity ^0.8.0;
contract AssignmentModulation_V10 is AssignmentModulation_V8{
    uint public w;
    uint public y1;
    uint public y2;
    uint public y3;
     constructor (uint[] memory _a, uint _x, uint _y, uint _y1, uint _y2, uint _y3) AssignmentModulation_V8( _a[0], _a[1], _y) public {
  x = _a;
}
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}
contract AssignmentModulation_V11 is AssignmentModulation_V9{
    uint public w;
    uint public y1;
    uint public y2;
    uint public y3;
    uint[] public x;
     constructor (uint[] memory _a, uint _x, uint _y, uint _y1, uint _y2, uint _y3) is AssignmentModulation_V9( _a[_a.length-1], _a[_a.length-0], _y) {
  x = _a;
}
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}
