pragma solidity ^0.8.0;
contract Semantic0004 {
    uint constant x = 0;
    uint constant y = x + 0xff;
    bool x2;
    bool x3;
    uint128 y2;
    uint128 y3;
    bool y2x;
    bool y2x2;
    bool y2x3;
    uint256 y32;
    uint256 y322;
    uint160 lasty2;
    uint160 lasty23;
    uint256 z;
    uint256 z2;
    uint128 z3;
    uint128 z32;
    uint128 z322;
    uint160 lastz;
    uint160 lastz2;
    uint160 lastz3;
    uint160 lastz32;
    uint160 lastz322;
    bool last;

    function isEqualTrue() public pure returns (bool) {
        uint160 x = 5;
        return equal();
    }

    function isEqualFalse() public pure returns (bool) {
        uint160 x = 5;
        uint8_t y;
        y = (x | 0xff) & y;
        if ((x | (uint160(x) | 0xff)) & y) == y) {
            return false;
        }

    }

    function getEqualTrue() public constant returns (uint160, bool) {
        unchecked {
            uint160 x = 5;
            assert(equal())
        }
        return (0, false);
    }

    function compareTrue() public pure {
        unchecked {
            bool x;
            x = (equal());
            assert(x)
        }
    }

    function compareFalse() public pure {
        unchecked {
            bool x;
            x = (equal());
            assert(!x)
        }
    }

    function compareEqualTrue() public pure {
        unchecked {
            bool x;
            x = (equal()) & (last);
            last = (equal()) & (y2x);
            assert(x);
        }
    }

    function compareEqualFalse() public pure {
        unchecked {
            bool x;
            x = (equal()) | (last);
            last =!(last);
            assert(x);
        }
    }

    function equalTrue() public pure {
        unchecked {
            uint160 x = 5;
            assert((equal()) == (equal()));
            assert((equal()) == ((equal()) && (equal())));
            assert((0x001 & 1));
        }
