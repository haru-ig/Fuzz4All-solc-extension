pragma solidity ^0.8.0;
contract Fallback {
    function shouldBe(uint counter) public returns (uint) {
        return counter + 1;
    }
}
