pragma solidity ^0.8.0;
contract E2 {
  uint8 public _number;
  uint public storedContractInstanceForTesting;

  constructor() {
    storedContractInstanceForTesting = msg.sender;
    _number = 0;
  }

  function incrementNumber() public payable {
    _number = _number + 1;
    msg.sender.transfer(_number);
  }
  function decrementNumber() public payable {
    _number = _number - 1;
    msg.sender.transfer(_number);
  }

  function checkStorageAddress() public view returns (address) {
    return storedContractInstanceForTesting;
  }

  function checkRemaining() public view returns (uint8) {
    return _number;
  }
}
contract B is E2 {
  mapping(bytes32 => address) public addresses_byName;
  mapping(address => bytes32) public names_byAddress;
  mapping(bytes32 => bytes32) public names_byName;

  constructor() payable {

    uint _number = 0;
    for (uint j = 0; j < E2.addresses_byName.length; j++) {
      bytes32 key = E2.addresses_byName[j];
      E2.names_byAddress[E2.addresses_byName[j]] = key;
      E2.names_byName[key] = E2.addresses_byName[j];
      _number = _number + 1;
    }
    _number = _number + 1;
    E2._number = _number;
  }

  function setAddressOf(address _from, bytes32 _name) public returns (bytes32) {
    require(address(storedContractInstanceForTesting) == _from, "only address of deployed contract can set an address of");
    addresses_byName[_name] = _from;
    names_byAddress[_from] = _name;
    names_byName[_name] = _name;
  }

  function setAddressByName(bytes32 _name, address _address) public onlyPayloadOwner {
    nameToAddress[_name] = _address;
  }

  function nameOf(address account) public view returns (bytes32)
