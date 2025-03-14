pragma solidity ^0.8.0;
contract Mutator4 {
    function shouldBe(address addr) public pure returns (address) {
        addr = 0x1234;
        return addr;
    }
}
