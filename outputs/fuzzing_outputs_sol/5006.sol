pragma solidity ^0.8.0;
contract Mutated(Fallback) {
    function () public pure {}
}
contract Caller {
    function call(address _address) public pure returns (bytes memory) {
        return calldata(_address);
    }

    function calldata(address _address) public pure returns (bytes memory) {
        return abi.encodeWithSignature("fallback()");
    }
}
uint[3] memory c;
