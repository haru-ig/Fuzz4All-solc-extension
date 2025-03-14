pragma solidity ^0.8.0;
contract Semantic0022 {
    function equal() public pure {
        uint x = 0;
        while(x == 0) {
            x = 0;
            x = 1;
        }
    }
}
