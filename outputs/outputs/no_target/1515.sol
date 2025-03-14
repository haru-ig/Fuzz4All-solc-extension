pragma solidity ^0.8.0;
contract Semantic0011 {
    function same() public pure returns (uint) {
        uint x = 0;
        while(true) {
            x = x / 100;
            if(x >= 100) {
                return x;
            }
        }
    }
}
