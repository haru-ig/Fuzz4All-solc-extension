pragma solidity ^0.8.0;
contract Test {
    function mutator(uint160 a, uint40 b) public {
       this.test(1,2);
    }
    function test(uint160 a, uint152 b) public {
        a = a + b;
    }
}
