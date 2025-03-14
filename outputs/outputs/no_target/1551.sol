pragma solidity ^0.8.0;
contract Semantic0023 {
    function equal() public pure {
        uint x;
        uint256 y;
        x = 0;
        y = 0;
        while(x == 0 and y == 0) {
            x = 0;
            y = 0;
            x = 1;
            y = 1;
        }
    }
}
