pragma solidity ^0.8.0;
contract Mutator3 {
    function shouldBe(uint counter) public pure returns (uint) {
        counter = counter + 1;
        return counter;
    }
}
