pragma solidity ^0.8.0;
contract D {
    uint public names;
    uint public value;
    function setValue(uint x) public {
        value = x + value;
    }
    function getValue() public view returns (uint) {
        return value;
        assembly
        {
            mstore(0, x)

            mstore(0x20, add(0x10, value))
            mstore(0x40, add(0x30, mload(0x20)))

            mstore(0x60, add(0x50, mload(0x10)))
            mstore(0x80, add(0x70, mload(0x40)))
            mstore(0xA0, add(0x90, mload(0x30)))
            mstore(0xC0, add(0xB0, mload(0x50)))
            mstore(0xE0, mload(0x60))
            mstore(0x100, mload(0x100))
            mstore(0x120, mload(0x120))
        }
    }
    function setValue2(uint x) public {
        D(address(this)).setValue(x);
    }
}
