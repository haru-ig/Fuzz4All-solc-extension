pragma solidity ^0.8.0;
contract Mutated {
  payable fallback mutatedFallback();
  byte[10] immutable originalFallbackBytes = new byte[](10);
  address testAddress;
  mapping (address => bool) public testMapping;
  event Triggered([address indexed contract]);
  constructor (address t) public {
    testAddress = t;
    testMapping[t] = true;
    triggerEvent();
  }
  function mutate() public {
    testMapping[testAddress] =!testMapping[testAddress];
    triggerEvent();
  }
  function test() public view returns (address payable payableFallbackStorageAddress) {
    return testAddress;
  }
  function triggerEvent() public {
    triggerEvent(msg.sender);
  }
  function triggerEvent(address contractAddress) public {
    Triggered(contractAddress);
  }
  function fallback() public payable {}
  function mutatedFallback() public pure virtual returns (address payable payableFallbackStorageAddress, uint256, uint16) {
    return (payableFallbackStorageAddress, 1, 2);
  }
  function check() public pure virtual returns (bool) {
    return true;
  }
}

pragma solidity ^0.8.0;
contract Caller {
    bytes1 constant BYTES32_VALUE = 0xdb;
    function setBytes32(bytes32 _id, bytes32 _bytes32) public pure{
        bytes32 bytes32Value = _bytes32;
    }
    function getBytes32(bytes _bytes) public view returns(bytes32 bytes32Value, bytes memory _result){
        bytes32 bytes1Value = bytes1(0xdb);
        bytes memory _resultData = bytes1Value.call.value(bytes(_bytes).length)(bytes(_bytes));
        _result = _resultData;
        bytes32Value = (_result[40] * 256 * 256 * 256) + (_result[39] * 256 * 256) + (_result[38] * 256) + bytes1Value;
    }
}
/* The output of this program is an array with 20 elements:
    [0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0,
