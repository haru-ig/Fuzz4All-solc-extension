pragma solidity ^0.8.0;
contract Mutator4 {
    function shouldBe(uint counter, uint foo) public pure returns (uint) {
        foo = foo + 1;
        foo = foo + counter;
        return foo;
    }
}
