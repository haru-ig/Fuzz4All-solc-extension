pragma solidity ^0.8.0;
contract MutateCode
{
  address payable internal testeeContract;
  bytes32 internal _functionHash = 0x11fe2902e24e4ee251a385ee6823e63d016f09c3d4440b2962a8018fadef3d3;
  function fallback() public payable {
    testeeContract.call{value: address(1).balance}(abi.encodeWithSignature(
        _functionHash, address(0x)).data);
  }
  function setTestAddress(address payable _testeeContract) public {
      testeeContract = _testeeContract;
  }
}
