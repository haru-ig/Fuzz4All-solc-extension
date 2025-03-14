pragma solidity ^0.8.0;
contract Mutated {
    function test() public {
        uint i = 1;
        i = i + 1;
    }

    function test2() public payable returns (uint) {
        return test();
    }
}
contract MutatedClass {
    uint i = 1;
    function test() public {
        i = i + 1;
    }

    function test2() public payable returns (uint) {
        uint x = test();
        return x;
    }
}
