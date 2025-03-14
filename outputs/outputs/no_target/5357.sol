pragma solidity ^0.8.0;
contract Mutations {
    function test1(uint x) public pure {
        uint y = 10;
        uint z = uint(x - 1);
    }
    function test2(uint x) public pure {
        uint y = 10;
        uint256 z = uint(x - y);
    }
    function test3(uint x) public pure {
        uint y = 10;
        uint m = uint(uint256(x - (uint256)y));
    }
    function test4(uint x) public pure {
        uint256 y = 255;
        uint256 z = uint256(x - y);
        uint256 m = uint256(uint256(x & (uint256)200000000)));
    }
    function test_reverts(int8 x) public pure {
        uint y = 10;
        uint x = 0;
        uint n;
        if (x > y) {
            n = y + 1;
        } else {
            x -= y;
            n = 0;
        }
    }
}
