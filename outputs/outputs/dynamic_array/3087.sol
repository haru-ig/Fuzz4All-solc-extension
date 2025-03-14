pragma solidity ^0.8.0;
contract AssignmentModulation_V10 {
    uint[] private x;
    uint public w;
    uint public y1;
    uint public y2;
    uint public y3;
     constructor(uint _x, uint _a, uint _b, uint _y1, uint _y2, uint _y3) public {
        x = new contract.uint[](3);
        x[0] = _a;
        x[1] = _b;
    }
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}
contract AssignmentModulation_V11 {
    uint[] private x;
    uint public w;
    uint public y1;
    uint public y2;
    uint public y3;
     constructor (uint [] memory _a, uint _x, uint _y, uint _y1, uint _y2, uint _y3) public {
     x = _a;
    }
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}
contract AssignmentModulation_V12 {
    uint[] private x;
    uint public w;
    uint public y1;
    uint public y2;
    uint public y3;
     constructor (uint _x, contract.uint[] memory _a, uint _b, uint _y1, uint _y2, uint _y3) public {
        x = _a;
     }
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}
