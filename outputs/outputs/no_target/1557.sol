pragma solidity ^0.8.0;
contract Semantic0023 {
    function equal() public pure {
        uint256 x = 0;
        while(x == 0) {
            x = 0;
            x = 1;
        }
    }
}
