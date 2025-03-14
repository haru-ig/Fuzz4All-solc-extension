pragma solidity ^0.8.0;
contract Mutator2 {
    function shouldBe(uint counter) internal pure returns (uint) {
        return counter + 1;
    }
}
