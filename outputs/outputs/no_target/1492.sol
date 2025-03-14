pragma solidity ^0.8.0;
contract Semantic0032 {
    function same() public pure {
        uint x;
        {
            x = uint(int(0));
        }

        if (false) {
            x = uint(int(0));
        }
    }
}
contract Semantic0033 {

    function same() public pure {
        uint x;
        { uint(uint128(uint168(int(uint80(uint(uint256.max / 3))
            / 16 + int(uint80(uint(uint64.max / 900)))))) };
    }
}
