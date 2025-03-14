pragma solidity ^0.8.0;
contract Mutator {
    function shouldBe(uint counter) internal pure returns (uint) {
        counter = counter + 1;
        return counter;
    }
    receive() external {}
}
