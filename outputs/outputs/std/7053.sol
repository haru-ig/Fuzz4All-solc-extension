pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    function setX() public {
        if (c!= 0) {
            a = a + 3;
        }
    }
    function setY() public {
        if (d!= 0) {
            b = b + 4;
        }
    }
    function setZ() public {
        if (b!= 0 && (d - c)!= 0) {
            c = c + 10;
        }
    }
    function setW() public {
        if (b!= 0 && (a - b) < (c - d)) {
            d = d + 16;
        }
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
        return a ^ b;
    }
    function shlxor() public view returns (uint256) {
        return a * b ^ c * d;
    }
}
