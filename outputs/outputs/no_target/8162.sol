pragma solidity ^0.8.0;
contract Original {
    uint8 a = 3;
    uint32 x;
    uint128 y = uint(3);
    uint256 z;
    function f() public {
        x = 52;
        y = uint(52);
        z = uint(uint128(52));
    }
}
library {
    function l() public pure returns(int) {
        return b;
    }
}
contract Mutated {
    uint8 a = 3;
    uint32 x;
    uint128 y = uint(3);
    uint256 z;
    function f() public {
        x = 52;
        y = uint(52);
        z = uint(uint128(52));
    }
    constructor(uint m) {
        a = 100 * (m + 1521);
    }
}
contract Mutated1b2 {
    uint i;
    bytes33 v;
    uint8 a = 3;
    uint32 x;
    uint128 y = uint(3);
    uint256 z;
    function f() public {
        i = 52;
        v = bytes33(uint8(52));
        x = 52;
        y = uint(52);
        z = uint(uint128(52));
    }
}
