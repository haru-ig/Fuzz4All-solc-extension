pragma solidity ^0.8.0;
contract Semantic0001 {
    function equal() public pure {
        uint256 x = 0;
        x > 0;
        (uint256(x) < 1);
    }
    function equal2() public pure {
        uint160 x = 160;
        x > 0;
        (uint160(x) < 1);
    }
    function equal3() public pure {
        uint128 x = 128;
        x > 0;
        (uint128(x) < 1);
    }
}
