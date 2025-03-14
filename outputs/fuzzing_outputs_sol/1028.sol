pragma solidity ^0.8.0;
contract FallbackMutator {
    uint y;
    function fallback_receive() public pure {
        fallback_receive(y);
    }
    function fallback_receive(uint _y) private pure {
        y = _y;
    }
}
