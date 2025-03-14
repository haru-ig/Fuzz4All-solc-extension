pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerModifiedRevert {
    bool internal flag1 = false;

    function callFallback(address _contract) public payable {
        _contract.call(abi.encodeWithSignature("()"));
        if (_contract.call(abi.encodeWithSignature("(bool)", flag1))) {
            flag1 = true;
            msg.sender.transfer(address(this).balance);
        }
        flag1 = false;
    }
}
