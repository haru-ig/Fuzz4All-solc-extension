pragma solidity ^0.8.0;
contract Caller {
    function callFallbackExternal (address receiver) public pure returns (bool) {
        return receiver.call { value: msg.value }("");
    }
    function callFallbackExternalTo (address receiver, address payable payee) public pure returns (bool) {
        return receiver.call { value: msg.value }("");
    }
}
