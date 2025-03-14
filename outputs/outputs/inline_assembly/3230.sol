pragma solidity ^0.8.0;

contract Mutate {
  uint internal _value;
  uint internal _amount;
  uint internal _amount2;
  uint internal _amount3;
  uint internal _amount4;
  function ChangeAmounts(uint amount) public {
      _amount = _amount + amount;
        if(_amount % 10000 == v) {
        if(!_check(_amount)) {
        _amount4 = _amount4 + amount;
        _amount2 = _amount2 + _amount;
      return _amount;
      }
      }
    }
    address payable _owner;
    constructor() {
      _owner = msg.sender;
    }

    function CheckIfOwnerIsContractOwner() public view returns (bool) {
      return(isContractOwner(_owner));
    }

    function isContractOwner(address _addr) public view returns (bool) {
      uint storage length = address(this).code.length;
      bytes4 magic = 0x608060405234801561001057600080fd5b34801561002057600080fd5b61003f906020803590602001908080359060200290600052602060002090601f01602090048101928261100080359060200191909190610058565b604051809
