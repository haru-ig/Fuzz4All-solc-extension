pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    function setX() public {
        a = a + 1;
    }
    function setY() public {
        b = c;
        c = b;
        a += 2;
        while (!keccak256(abi.decode(string(bytes(type(string).length)), (uint256[1])));
        b -= 4;
        b *= 2;
        c = c - 7;
        c /= d + e ^ a * d;
        d += b * 5;
        d &= a;
        e -= 2;
    }
    function setZ() public {
        c -= 1;
        c *= b ^ a;
        d -= d + b * 6;
        d ^= c ^ e;
        e ^= b ^ a;
        b -= 1;
        b *= c - 3;
        c -= 2;
    }
    function setW() public {
        b += 3;
        b -= c ^ e ^ a;
        b *= 3;
        c *= a ^ c | e << d;
        c ^= b;
        c ^= 5;
    }
    function getX() public view returns (uint256) {
        return a;
    }
    function getY() public view returns (uint256) {
        return b;
    }
    function getZ() public view returns (uint256) {
        return c;
    }
    function getW() public view returns (uint256) {
        return d;
    }
    function xor() public view returns (uint256) {
        return a ^ c;
    }
    function shlxor() public view returns (uint256) {
        return a * b ^ c * d;
    }
}
