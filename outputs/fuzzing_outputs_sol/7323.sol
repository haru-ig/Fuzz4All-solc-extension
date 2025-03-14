pragma solidity ^0.8.0;
contract Caller2 {

    bytes memory input="abcdefg";

    function sendDataViaCall(address contractAddr) public returns (bool){
        return callDataViaCall(contractAddr, "", input);
    }

    function sendDataViaCall2(address contractAddr) public returns (bool){
        return callFallbackViaCall(contractAddr, "", "");
    }
    function callDataViaCall(address contractAddr, bytes calldata funcSig, bytes memory sigData) public returns (bool) {
        return (contractAddr.call{value: msg.value} (abi.encodeWithSignature(funcSig, sigData)));
    }
    function callFallbackViaCall(address contractAddr, bytes calldata funcSig, bytes memory sigData) public returns (bool) {

        require(contractAddr.call.value(msg.value) {value: msg.value} (abi.encodeWithSignature(funcSig, sigData)));
    }
}
