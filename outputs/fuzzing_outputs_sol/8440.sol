pragma solidity ^0.8.0;
contract CallerExample{
  function callerReturnFalse() public pure returns(bool) {
    return false;
  }
  function callerReturnTrueOneTime() public pure returns(bool) {
    return true;
  }
}
contract ContractCallerExample {
  function getCallerReturnTrueWithoutFallback() public view returns(bool) {
    return CallerExample.callerReturnTrueWithoutFallback();
  }

  function getCallerReturnTrue() public view returns(bool) {
    return CallerExample.callerReturnTrue();
  }

  function getCallerReturnStringWithoutFallback() public view returns(string memory) {
    return CallerExample.callerReturnStringWithoutFallback();
  }

  function getCallerReturnString() public view returns(string memory) {
    return CallerExample.callerReturnString();
  }

  function getCallerReturnNothing() public view returns(bool, string memory) {
    return (CallerExample.callerReturnNothing(), "This is a string");
  }

  function getCallerReturnFalse() public view returns(bool) {
    return CallerExample.callerReturnFalse();
  }

  function getCallerReturnTrueOneTime() public view returns(bool) {
    return CallerExample.callerReturnTrueOneTime();
  }

  function getCallerReturnNothingWithoutFallback() public view returns(bool, string memory) {
    return (CallerExample.callerReturnNothingWithoutFallback(), "This is a string");
  }

  function getCallWithStorage() public pure {
    CallerExample.getCallWithStorage();
  }
}

pragma solidity ^0.8.0;
contract ComplexExample {
  function callAndReturnTrueWithoutFallback() public view returns (bool) {
    return CallerExample.callAndReturnTrueWithoutFallback();
  }

  function callAndReturnTrue() public view returns (bool) {
    return CallerExample.callAndReturnTrue();
  }

  function callAndReturnStringWithoutFallback() public view returns (string memory) {
    return CallerExample.callAndReturnStringWithoutFallback();
  }

  function callAndReturnString() public view returns (string memory) {
    return CallerExample.callAndReturnString();
  }

  function callAndReturnNothing() public view returns(bool, string memory) {
    return CallerExample.callAndReturnNothing();
  }

  function callAndReturnFalse() public view returns(bool) {
    return CallerExample.callAndReturnFalse();
  }

  function callAndReturnTrueOneTime() public view returns(bool) {
    return CallerExample.callAndReturnTrueOneTime();
  }

  function callAndReturnNothingWithoutFallback() public view returns(bool, string memory) {
    return CallerExample.callAndReturnNothingWithoutFallback();
  }

  function sendToStorageAndReturnTrueWithoutFallback() public pure returns (bool) {
    CallerExample.sendToStorageAndReturnTrueWithoutFallback();
    return true;
  }

  function sendToStorageAndReturnTrue() public pure returns (bool) {
    CallerExample.sendToStorageAndReturnTrueWithoutFallback();
    return true;
  }

  function setStorage
