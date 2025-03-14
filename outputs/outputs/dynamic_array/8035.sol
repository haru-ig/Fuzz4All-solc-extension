pragma solidity ^0.8.0;
contract Test48Mutant {
    uint a;
    uint[3] public array;
    constructor() public {
        a = 4;
    }
    function updateA() public {
        a = 42;
    }
    function modArray() public {
        array[2] = 42;
    }
    function writeArray() public {
        array[1] = 42;
    }
    function resetState() public {
        a = 0;
    }
    function setA(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint) {
        return a;
    }
    function modA() public returns (uint) {
        return a;
    }
}
