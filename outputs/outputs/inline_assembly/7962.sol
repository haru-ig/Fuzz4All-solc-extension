pragma solidity ^0.8.0;
contract L70Nested {
    function Late() public returns (uint, uint, uint) {
        uint x;
        uint y;
        uint z;
        uint w;
        assembly {
            x := 0x1234
            y := 0
            x := x + 42
            x := x - 123
            z := mload(0xf4328856)
            y := add(1, y)
        }
        return (x, y, z);
    }
}
