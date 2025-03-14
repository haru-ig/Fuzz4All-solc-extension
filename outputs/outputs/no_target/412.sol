pragma solidity ^0.8.0;
contract Semantic1Changed6 {
    function balance6() public pure {
        (uint256 a) = 256;
        assert(a + 1 > a);
    }
}
