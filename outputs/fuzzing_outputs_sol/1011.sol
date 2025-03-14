pragma solidity ^0.8.0;
contract Caller {
    function _fallback_receive() public pure {
        fallback_receive(0);
    }
    function fallback_receive(uint _dummy) private pure {


    }
 }
