pragma solidity ^0.8.0;
contract Caller {
    mapping(address => uint) public amount;
    bytes32 public _functionToCall;
    function _fallback() internal {
        (,uint) = Caller._invoke( msg.value, 0);

        emit LogMessage("Contract failed to receive Ether");
    }

}
