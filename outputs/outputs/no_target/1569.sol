pragma solidity ^0.8.0;
contract Semantic0024 {
    uint128 x;
    function equal() public pure {
        uint128 y = 0;
        while(x == 0) {
            x = 0;
            x = 1;
        }
    }
}
