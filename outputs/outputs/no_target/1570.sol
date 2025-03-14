pragma solidity ^0.8.0;
contract Semantic0003 {
    modifier myMod {
        return;
    }
    function equal() public pure myMod {
        uint128 x = 0;
        x > 0;
        (uint128(x) < 1);
    }
}
