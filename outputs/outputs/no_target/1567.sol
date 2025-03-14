pragma solidity ^0.8.0;
contract Semantic0002 {
    function equal() public pure {
        uint128 x = 0;
        x > 0;
        (uint128(x) < 1);
    }
}
