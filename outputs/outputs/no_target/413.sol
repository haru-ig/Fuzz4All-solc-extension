pragma solidity ^0.8.0;
contract Semantic2Changed6Mutated {
    function balance6Mod() public pure {
        (uint160 a) = -1;
        assert(a + 1 > a);
    }
}
