pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_9 {
     uint[] public x;
     uint public a;
     uint public b;
     constructor () public {
        a = 0;
        b = 0;
        x = new bool[](2);
        x[0] = false;
        x[1] = false;
    }
    function doWork() public returns(bool) {
        return x[0];
     }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_10 {
    uint[] public x;
    uint public a;
    uint public b;
    constructor () public {
        a = 0;
        b = 0;
        x = new mapping(address=>uint[](1))[msg.sender];
        x[msg.sender][0] = 0;
        x[msg.sender][1] = 0;
    }
    function doWork() public returns(uint) {
       return x[msg.sender][0];
    }
}
