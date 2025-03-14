pragma solidity ^0.8.0;
contract Semantic1 {
    function balance4() public pure {
        uint a = 0;
        assert(a + a > a);
    }
}
