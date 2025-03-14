pragma solidity ^0.8.0;
contract Modification {
    function valueToCaller() public {
        valueToCaller = msg.sender;
    }
    function modify() public {

        valueToCaller.call.value(msg.value)(abi.encodeWithSignature("valueToCaller()", msg.sender));
        valueToCaller.call(abi.encodeWithSignature("modify2()", msg.sender));
    }
    function modify2(address _a) public {
        valueToCaller = _a;
    }
}
