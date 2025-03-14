pragma solidity ^0.8.0;
contract Semantic2Changed6Changed {
    function balance6Changed() public pure {
        (uint160 a) = 1;


        uint256 b = a + 1;

        assert(b == 0);
    }
}
