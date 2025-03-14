pragma solidity ^0.8.0;
contract B is A {
    function A() public {
        super.mutate(1666);
    }
    function mutate(uint16) public pure returns (uint16) {
        return ((uint16(uint16(uint16(uint16(1666))) * 16) * 15) / 15);
    }
}
