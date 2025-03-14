pragma solidity ^0.8.0;
contract Semantic2Changed5 {
    uint a;
    function balance4() public pure {
        uint b = 1;
        assert(a + b > a);
    }
}
