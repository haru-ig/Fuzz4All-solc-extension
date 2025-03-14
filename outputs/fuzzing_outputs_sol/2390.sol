pragma solidity ^0.8.0;
contract SemanticallyEquivalentCaller {

  uint a = 1;
  uint b = 2;

  function callOnFallbackWithoutFallbackFunction() public returns (uint) {
    call_without_fallback();
    _;
  }

  function call_without_fallback() public returns (uint) {

  }

  function callOnFallbackWithFallbackFunction() public returns (uint) {
    call_with_fallback();
    _;
  }

  function call_with_fallback() internal returns (uint) returns (uint) {

  }

  function callOnFallbackWithFallbackAndReceiver() public returns (uint) {
    call_with_fallback_and_receiver();
    _;
  }

  function call_with_fallback_and_receiver() internal returns (uint) returns (uint) {
    uint a;
    return a;
  }

  function callOnFallbackWithoutFallbackFunctionAndReceiver() public returns (uint) {
    call_without_fallback_and_receiver();
    _;
  }

  function call_without_fallback_and_receiver() public returns (uint) {
    uint a;
    return a;
  }

  function callOnFallbackWithFallbackWithReceiver() public returns (uint) {
    call_with_fallback_with_receiver();
    _;
  }

  function call_with_fallback_with_receiver() internal returns (uint) returns (uint) {
    uint a;
    return a;
  }

  function callOnFallbackWithoutFallbackFunctionWithReceiver() public returns (uint) {
    call_without_fallback_with_receiver();
    _;
  }

  function call_without_fallback_with_receiver() public returns (uint) {
    uint a;
    return a;
  }

  function callOnFallbackWithFallbackFunctionAndThrow() public throws {
    call_with_fallback_function_and_throw();
    _;
  }

  function call_with_fallback_function_and_throw() internal returns (uint) throws {
    uint a;
    return a;
  }

  function callOnFallbackWithoutFallbackFunctionAndThrow() public throws {
    call_without_fallback_function_and_throw();
    _;
  }

  function call_without_fallback_function_and_throw() public throws {
    uint a;
    return a;
  }
}

pragma solidity ^0.
