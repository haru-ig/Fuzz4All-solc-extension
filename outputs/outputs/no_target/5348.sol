pragma solidity ^0.8.0;
contract OldMutations {
    function test(uint x) public pure {
        uint256 y = 10;
        x += y;
        if (x == 10)
            x -= y;
        uint n = y + 1;
    }
    function test2(uint x, uint y) public pure {
        uint256 z = 5;
        x += y;
        z = x + 1;
        uint256 m = uint256(x);
        uint256 n = uint256(m) - uint256(y);
    }
}
