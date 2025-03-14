pragma solidity ^0.8.0;
contract Semantic2Changed5 {
    function balance4() public pure {
        uint a = 0;
        assert(a + 1 > a);
    }
}
