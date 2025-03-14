pragma solidity ^0.8.0;

contract Fallback3
{
    function myFallbackCallInContractWithoutFallback() public recordReturn() external pure returns (uint) {
        return 0;
    }
    function myFallbackCallWithReturn(uint returnVal) public recordReturn() external pure {
        returnVal;
    }
    function recordReturn() public pure {}
}
contract Fallback5
{
    function myFallbackCallWithReturn(uint returnVal) public recordReturn() external pure returns (bool) {
        returnVal;
    }
    function recordReturn() public pure {}
}
contract Fallback7
{
    function myFallbackCallWithoutFallback() public recordReturn() external payable returns (uint) {
        return 0;
    }
    function myFallbackCallWithReturn(uint returnVal, uint payVal) public recordReturn() external pure {
        returnVal;
    }
    function recordReturn() public pure {}
}
contract Fallback6
{
    address public contractAddress;
    address public _returnAddress;
    uint public _callResult;
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    function getReturnAddress() public view returns (address) {
        return _returnAddress;
    }
    function setReturnAddress(address _address) public {
        _returnAddress = _address;
    }
    function getCallResult() public view returns (uint) {
        return _callResult;
    }
    function setCallResult(uint _value) public {
        _callResult = _value;
    }
    function myFallbackCallInContractWithoutFallback() public recordReturn() {
        uint result = contractAddress.call(abi.encodeWithSignature("fallback()()"));
        require(result.gasUsed > 0, "Fallback should take gas");
        returnResult.gasUsed = result.gasUsed;
        returnResult.value = getCallResult();
    }
    function myFallbackCallWithReturn(uint returnVal) public recordReturn() {
        uint result = contractAddress.call(abi.encodeWithSignature("fallbackWithReturn()(?)", returnVal));
        require(result.gasUsed > 0, "Fallback should take gas");
        returnResult.gasUsed = result.gasUsed;
        returnResult.value = getCall
