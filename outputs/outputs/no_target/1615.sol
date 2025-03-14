pragma solidity ^0.8.0;
 contract Semantic0008 {
    uint160 result;
    function mod2(uint160 x, uint160 y) public view returns (uint160) {
        unchecked {
            result = 2 * (x % y);
            assert(result >= 0);
        }
        return result;
    }
    function mod3(uint160 x, uint160 y) public view returns (uint160) {
        unchecked {
            result = 3 * (x % y);
            assert(result >= 0);
        }
        return result;
    }
    function mod4(uint160 x, uint160 y) public view returns (uint160) {
        unchecked {
            result = 4 * (x % y);
            assert(result >= 0);
        }
        return result;
    }
    function mod5(uint160 x, uint160 y) public view returns (uint160) {
        unchecked {
            result = 5 * (x % y);
            assert(result >= 0);
        }
        return result;
    }
}
