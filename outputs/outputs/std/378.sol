pragma solidity ^0.8.0;
contract Mutable2 {
    uint256[32] x;
    function f() private view returns (uint256[30]) {
        return x;
    }
    function f_() public view returns (uint256[1]) {
        return x;
    }
    function f___() public view returns (uint256[32]) {
        return x;
    }
    function setX() public {
        uint[64][16] memory y;
        for (uint256 i = 0; i < 48; ++i) {
        x[i] = uint32(i);
        uint32[] memory a;
        a[0] = uint32(i);
        uint32[1] b;
        b[0] = uint32(i);
        uint[64[]] memory c;
        for (uint256 j = 0; j < 6; ++j) {
        y[i][j] = uint32(j);
        uint32[32] memory d;
        d[0] = uint32(j);
        c[j] = d;
        }
        }
    }
    function f_private() private returns (uint256[32]) {
        return x;
    }
    function f_public() public returns (uint256[32]) {
        return x;
    }
    function f_private_public() private public {
        return x;
    }
    function f_private_public_array_mutate(uint32[32] memory b) returns (uint256[32]) {
        b[0] = uint32(0);
        uint[64][16] memory y;
        for (uint256 i = 0; i < 48; ++i) {
            y[i][0] = uint32(i);
            uint32[] memory a;
            a[0] = uint32(i);
            uint32[1] b;
            b[0] = uint32(i);
            uint[64[]] memory c;
            for (uint256 j = 0; j < 6; ++j) {
            y[i][j] = uint32(j);
            uint32[32] memory d;
            d[0] = uint32(j);
            c[j] = d;
            }
        }
        return b;
    }
}
