pragma solidity ^0.8.0;
contract Convert {
  event LogString(string eventName);
  function myFunc() public pure returns (uint x) {
    uint z = 0xA0B86991C6218B36C1D19D4A2E9E6DBF63C19E4C;
    uint x = 0xbaddadadbadadada;
    uint[] memory myArray = new uint[](10);
    myArray[x] = z;
    LogString("Some value was changed.");
  }
}
