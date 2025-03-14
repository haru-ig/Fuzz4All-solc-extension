pragma solidity ^0.8.0;
contract OldMutations {
    function test(uint x) public pure {
        uint256 y = 10;
        x += y;
        if (x == 10)
            x -= y;
        uint n = y + 1;
    }
}
