pragma solidity ^0.8.0;
contract MutatedAddressable {
  address public value_address = msg.sender;
  struct AddressableStruct {
    bool exists;
    address value_address;
    mapping (address => bool) isAddresses;
    address _dataAddress;
    bytes _data;
  }

  AddressableStruct myAddressableStruct;


  function isAddressTrue(address _address) public returns (bool) {
    require(isValidAddress(_address), "Invalid");
    return myAddressableStruct.isAddresses[_address];
  }


  address public returnedAddress;
  address public returnedAddress2;
  function mutateAddressableStruct() public {


    bool doesExist = myAddressableStruct.exists;
    uint256 index = 0;
    require(exists == true, "Does exist must be true");
    require(isAddressTrue(msg.sender), "Address must be a true person");
    do {
      bool existsBefore = myAddressableStruct.exists;
      address addressToReturnValue;
      IAddressable addressable;
      bytes memory data;
      bytes memory data2;
      AddressableStruct memory addressableStruct;
      if (index == 0) {
        addressable = value_address;
        addressToReturnValue = addressable.value_address;
      }
      addressableStruct.exists = existsBefore;
      addressableStruct.isAddresses[index] = existsBefore;
      addressableStruct._dataAddress = msg.sender;
      addressableStruct._data = addressToReturnValue.toEthBytes();
      isAddresses(addressableStruct._dataAddress, addressableStruct._data);
      do {
        addressableStruct = (AddressableStruct(addressableStruct._dataAddress, addressableStruct._data, getAddressableStruct(addressableStruct._dataAddress )).isAddresses[index] = true);
        addressableStruct._data = data;
        index++;
      } while (addressableStruct._data.length > 0);
    } while (index <= 2000);
    returnedAddress = msg.sender;
    returnedAddress2 = addressToReturnValue;
  }
function isValidAddress(address _address) internal view returns (bool) {
      return (block.difficulty * address(_address).balance) % 100!= 0;
}
}
pragma solidity ^0.8.0;
library EthBytes {
    function toEthBytes(uint256 _value) internal pure returns (bytes memory) {
        bytes memory _
