pragma solidity ^0.8.0;
contract SafeMathExample {
    uint256 private constant MAX = 10**3;

    function safeDiv(uint256 x, uint256 y) private pure returns (uint256) {
        return x / y;
    }
function safeAdd(uint256 x, uint256 y) private pure returns (uint256) {
        return x + y;
    }
function safeSub(uint256 x, uint256 y) private pure returns (uint256) {
        return (uint256(x) < y)? x + MAX : y;
    }
function safeMul(uint256 x, uint256 y) private pure returns (uint256) {
        if (x == 0) {
            return 0;
        }
        uint256 z = 0;
        while (x > 0) {
            if ((x & 1) == 1) {
                z = safeAdd(z, y);
            }
            x = safeSub(x, 1);
            y = safeAdd(y, y);
        }
        return z;
    }
function safeDivMod(uint256 x, uint256 y, uint256 z) private returns (uint256, uint256) {
        if (y == 0) {
            return (0, 0);
        }
        uint256 q = safeDiv(x, y);
        uint256 r = safeAdd(x, safeMul(q, y));
        return (q, r);
}
uint256 public constant A = 1;
uint256 public constant B = 2;
uint256 public constant X = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364140;
uint256 public constant ZERO = 0;
uint256 public constant ONE = 1;
uint256 public constant TWO = 2;
uint256 public constant THREE = 3;
