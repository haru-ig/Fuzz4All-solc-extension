pragma solidity ^0.8.0;
contract AssignmentModulation_V5 {
    uint[] public x;
    uint public w;
    uint public y1;
    uint public y2;
    constructor (uint _x, uint _y, uint _y1, uint _y2, uint _z) public {
      x = new uint[](1);
      x[0] = _x;
    }
    function setPairs_V4(uint _a) public {
       w = _a;
    }
    function getAndStorePairs() public returns(uint){
        return y1;
    }
}

contract AssignmentModulation_V4 {
    uint[1][] [] public x;
    uint public w;
    uint public y1;
    uint public y2;
    constructor (uint _x, uint _y, uint _y1, uint _y2, uint _z) public {
      x = new uint[1][];
    }
    function setPairs_V4(uint _a) public {
       w = _a;
    }
    function getAndStorePairs() public returns(uint){
        return y1;
    }
}

contract AssignmentModulation_V3 {
    uint[1][] [][] public x;
    uint public w;
    uint public y1;
    uint public y2;
    constructor (uint _x, uint _y, uint _y1, uint _y2, uint _z) public {
      x = new uint[1][][];
    }
    function setPairs_V4(uint _a) public {
       w = _a;
    }
    function getAndStorePairs() public returns(uint){
        return y1;
    }
}

contract AssignmentModulation_V2 {
    uint[1][1][1] public x;
    uint public w;
    uint public y1;
    uint public y2;
    constructor(uint _x, uint _y, uint _y1, uint _y2, uint _z) public {
        x[0][0][0] = _x;
    }
    function setPairs_V4(uint _a) public {
       w = _a;
    }
    function getAndStorePairs() public returns(uint){
        return y1;
    }
}

contract AssignmentModulation_V1{
    uint[1][2][1] public x;
