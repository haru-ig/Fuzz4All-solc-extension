pragma solidity ^0.8.0;
contract GoodCaller {
    receive() external {}
    fallback() external payable {}
}
contract Caller {
    receive() external payable {}
    fallback() external {}
   fallback () external payable {}
    receive() external payable {}
contract Fallback {
    receive() external payable {}
    fallback() external payable {}
contract Fallback2 {

    receive() external payable {}
    fallback() external payable {}
contract Fallback3 {
    receive() external payable {}
    fallback() external payable {}
contract Fallback4 {
    receive() external payable {}
    fallback() external payable {}
contract Fallback5 {
    receive() external payable {}
    fallback() external payable {}
contract Fallback6 {

    receive() external payable {}
    fallback() external payable {}
contract Fallback7 {

    receive() external payable {}
    fallback() external payable {}
contract Fallback8 {

    receive() external payable {}
    fallback() external payable {}
contract Fallback9 {
    receive() external payable {}
    fallback() external payable {}
contract Fallback10 {
    receive() external payable {}
    fallback() external payable {}
contract CallerFallbacks {
    receive() external payable {}
    fallback() external payable {}
contract FallbackCallReceiver {
    fallback() external payable {}
    receive() external payable {}
}

function transfer(uint) payable external {}

function receive() external payable {}

{
    receive() external payable {}
    fallback() external {}
    sendValue(4711);
}

function sendValue(uint x) public {
    (bool success, ) = msg.sender.call{ value: x }("");
    require(success);
}
<fim_middle>{
    fallback() external payable {}
contract BadFallback {
    receive() external {}
    fallback () external payable {}
contract ExceptionThrowContract {
    receive() external payable {}
    fallback() external payable { throw; }
contract ExceptionThrowFunctionBadFallback {
    receive() external payable {}
    fallback() external payable { }
contract ExceptionThrowFunctionCallerFallback {
    receive() external payable {}
    fallback() external payable { }
contract ExceptionThrowFunctionCallerFallbackWithReceivable {
    receive() external payable {}
    fallback() external payable { }
contract ExceptionThrowFunctionCallerFallbackWithReceivableBadFallback {
    receive() external payable {}
    fallback() external payable { }
contract ExceptionThrowFunctionCallerFallbackWithReceivableCallerFallback {
    receive() external payable {}
    fallback() external payable { }
contract ExceptionThrowFunctionCallerFallbackWithReceivableExceptionThrow {
    receive() external payable {}
    fallback() external payable { }
contract ExceptionThrowFunctionCallerFallbackWithReceivableFallback {
    receive() external payable {}
    fallback() external payable { }
contract ExceptionThrowFunctionCallerFallbackWithReceivableSenderFallback {
    receive() external payable {}
    fallback() external payable { }
contract ExceptionThrowFunctionFallbackBadFallback {
    fallback() external payable { }
    recive() external payable {}
contract ExceptionThrowFunctionFallbackWithRe
