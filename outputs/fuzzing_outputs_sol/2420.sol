pragma solidity ^0.8.0;
contract Caller3 {
  interface TestInterface {
    function call3() public view returns (string memory);
  }
  function call4() public view returns (string calldata) {
    contract AddressCaller = address(Caller2());
    (address, ) memory test = getTestInterface(AddressCaller);
    return getReturnString(test);
  }
  fallback() external returns (string memory);

  function getReturnString(TestInterface storage test) internal view returns (string memory) {
    return "";
  }
  function getTestInterface(address i) internal pure returns (address) {
    return address(uint160(i));
  }
}
