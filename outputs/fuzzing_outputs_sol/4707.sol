pragma solidity ^0.8.0;
contract Caller {
    function shouldBe(uint counter) public returns (uint) {
        return this.transfer(address(this));
    }
}
