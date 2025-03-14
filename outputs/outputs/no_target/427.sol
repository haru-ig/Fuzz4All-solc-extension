pragma solidity ^0.8.0;
contract Semantic3Changed3 is Semantic2Changed2 {
    function balanceChange(_a) public pure {
        uint160 b = (_a + 4) - 1;
        assert(4 + b + 1 == 4 + b + 1);
        assert(4 + b + 2 == 4 + b + 2);
    }
}
