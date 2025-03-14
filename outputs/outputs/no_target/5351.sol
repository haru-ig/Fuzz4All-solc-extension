pragma solidity ^0.8.0;
contract NewMutations {
    function test1() public pure {
        uint y = 10;
        uint x = 5;
        uint n = y + 1;
    }
    function test2(uint x, uint y) public pure {
        uint256 z = 5;
        uint256 m = uint256(x);
    }
    function test_reverts(int8 x) public pure {
        uint y = 10;
        uint x = 5;
        uint n;
        if (x > y) {
            n = y + 1;
        } else {
            x -= y;
            n = 0;
        }
    }
}
