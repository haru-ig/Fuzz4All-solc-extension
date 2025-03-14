pragma solidity ^0.8.0;
contract Semantic2Changed6 {
    function balance6() public pure {
        (uint160 a) = 0;
        assert(a + 1 > a);
    }
}
