pragma solidity ^0.8.0;
contract FallbackFunc {
    function _fallback_func() public {
        uint x = msg.value;
        emit LogMsg();
    }
    event LogMsg();
}
