pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);
    function _fallback() internal returns (uint) {
        uint x = msg.value;
        emit LogMessage("This Ether should be passed to Contract.fallback()");
        return x;
    }
}
