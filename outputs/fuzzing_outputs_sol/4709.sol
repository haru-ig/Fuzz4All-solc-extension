pragma solidity ^0.8.0;
contract Caller {
    function shouldBe(uint counter) public calls(Fallback() calldata) returns (uint) {
        return counter + 1;
    }
}
