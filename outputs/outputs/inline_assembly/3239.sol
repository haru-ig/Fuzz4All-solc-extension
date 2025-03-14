pragma solidity ^0.8.0;
contract Changes {
  constructor() {
    _contractValue = 13;
  }
}


pragma solidity ^0.8.0;
contract NewMutatedAddresses {
  Mutate public _mutate;
  Changes public _changes;
  address[] public _addresses;
  uint[] public _array;
  uint internal _arrayValue2;
  uint internal _arrayValue3;
  constructor() {
    _mutate = new Mutate();
    _changes = new Changes();
    _addresses = new address[](4);
    _addresses[0] = msg.sender;
  }
  function addAddress() public {
    _addresses.push(msg.sender);
  }
  function removeAddress(uint index) public {
    uint currentLength = _addresses.length;
    if (currentLength > 1) {
      address removedAddress = _addresses[index];
      delete _addresses[index];
      _addresses.length--;
      _changed(removedAddress, index, currentLength);
    }
  }
  function changeArrayValue(uint v1, uint v2, uint v3) public {
    uint currentValue = _addressValueFor(index);
    _changed(msg.sender, currentValue, currentValue);
    _changed(msg.sender, v1, v1);
    _changed(msg.sender, v2, v3);
  }

  modifier onlyAddress(uint index) {
    require(_addresses[index] == msg.sender, 'Contract owner only');
    _;
  }
  function _addressValueFor(uint index) public view returns(uint) {
    uint currentValue = _mutableArrayValue(index);
    return _arrayValue2;
  }
  function _mutableArrayValue(uint index) internal view returns(uint) {
    uint length = _changes.getContractValue();
    return currentLength;
  }
  function _changed(address _caller, uint oldValue, uint
