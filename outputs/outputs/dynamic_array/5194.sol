pragma solidity ^0.8.0;
contract Test35 {
    function f() public returns (uint32[][] memory, uint32[2][2] memory) {
        uint32[2][2] memory x = new uint32[2][2]();
        uint32[][] memory b = new uint32[2][];
        uint32[2] memory arr = new uint32[](2);
        b[0] = x;
        b[1] = arr;
        uint32[][] memory x2 = new uint32[2][];
        uint32[2][2] memory x3 = new uint32[2][2]();
        uint32[][] memory x4;
        uint32[] memory a;
        uint256 x5 = 42;
        uint8 x10 = 0;
        uint32[] memory x11 = new uint32[](3);
        uint32 x13 = 0;
        uint256 x16 = 42;
        uint32[] memory x17;
        uint32[10] memory a1;
        x16 = x13 ^ x3;
        if (0) {
            x3 = b;
            x5 = (x3[1])[0];
            x2 = a1;
            x4 = x17;
            x10 = x6;
            if (address(this).balance >= 1) {
                x5 = a[0];
                a = x11;
                x17 = x4;
                x16 = x11;
                if (x11.length === 1) {
                } else {
                }
            }
        }
        return [x, x2];
    }
} */
