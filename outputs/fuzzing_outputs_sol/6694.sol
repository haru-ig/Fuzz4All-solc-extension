pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);
    function _fallback() public pure {
        uint x = msg.value;
        assembly {

            return(0,0)
        }
        emit LogMessage("This Ether should be passed to Caller.fallback()");
        return x;
    }
}
