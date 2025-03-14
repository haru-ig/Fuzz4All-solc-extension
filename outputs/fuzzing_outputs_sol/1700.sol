pragma solidity ^0.8.0;
contract Caller {
  address payable public myAddress;
  mapping(bytes32 => address) public fallbackAddresses;
  bool private initialized = false;
  constructor (address _myAddress) {
    myAddress = _myAddress;
  }
  function init () external {
    initialized = true;
  }
  function updateFallbackAddress (bytes32 _identifier, address _fallbackAddress) public {
    fallbackAddresses[_identifier] = _fallbackAddress;
  }
  function _fallback (bytes memory _data) public {

    if (initialized && address(this).isContract()) {

      assembly {
        let returnData := calldatacopy(0x20, returndatasize())
        calldatacopy(0x20, returnData, returndatasize())
        let returnValue := mload(returnData)
        switch returndatacopy(0x20, returnData, returndatasize())
          1 { revert(0, returnData) }
          0 { return(returnValue) }
      }
    }
  }
}
