pragma solidity ^0.8.0;
contract TestMutated270 {
    function mul(uint x, uint y) public pure returns (uint z) {
        uint m = 0;
        if (z < m) {
            m = mul(x, y);
        } else {
            m = mul(x, x);
        }
    }
}

pragma solidity ^0.8.0;
contract TestMutated738 {
    function mul(uint x) public pure returns (uint) {
        if (mul(270, x) > 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF) {
            revert();
        }
    }
}

pragma solidity ^0.8.0;
contract TestMutated278 {
    function mul(uint x, uint y) public pure returns (uint) {
        if (mul(278, x, y) > 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF) {
            revert();
        }
    }
}

pragma solidity ^0.8.0;
contract TestMutated1621 {
    uint x;
    uint y;
    function mul(uint x, uint y) public pure returns (uint z) {
        z = x;
        uint m = 0;
        if (m > 0) {
            m = mul(z, x);
        } else {
            m = mul(x, x);
        }
    }
}
