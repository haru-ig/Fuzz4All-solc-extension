pragma solidity ^0.8.0;
uint public a = 1;


contract Mutators14Mutated {
    uint public a;
    constructor (uint Y) public {
        a = Y;
    }
    function updateA(uint _returnData) public returns (uint) {
        uint Z = a + 1;
        a = Z;
        return Z;
    }
}

contract Mutators15Mutated {
    uint public a;
    constructor (uint Y) public {
        a = Y;
    }




    function updateA(uint _returnData) public returns (uint) {
        uint Z = a + 1;
        a = Z;
        return Z;
    }
    function modifyA() public {
        uint Z = a + 1;
        a = Z;
    }
}
