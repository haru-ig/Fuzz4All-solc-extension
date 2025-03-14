pragma solidity ^0.8.0;
contract Semantic0022 {
    function equal() public pure {
        uint x = 0;
        uint y = 1;
        while(x == 10000000000000000) {
           while (y == 1000000000000000) {
            x = x;
            uint y;
           }
        }
    }
}
