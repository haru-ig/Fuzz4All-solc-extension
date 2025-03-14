pragma solidity ^0.8.0;
contract Semantic0023_ {
    function equal() public pure {
        uint128 x = 0;
        uint8 _y = 1;
        while(_y == 1) {
            x = 0;
            x = 1;
            _y = 0;
        }
    }
}
