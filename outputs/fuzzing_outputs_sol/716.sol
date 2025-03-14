pragma solidity ^0.8.0;
contract FallbackWithFallback {
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
        emit ValueSet(storedData);
        fallback();
    }
    function getValue() public view returns (uint) {
      return storedData;
    }
    function fallback() public {
        emit FallbackCalled;
    }
    event ValueSet(uint value);
    event FallbackCalled;
}
