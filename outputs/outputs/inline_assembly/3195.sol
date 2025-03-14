pragma solidity ^0.8.0;
contract Contract {
  uint internal _value;

  constructor() {
    _value = 0xf05fc;
  }
  function x() public view returns (address) {
    return _value;
  }
}
contract CompactStorage {
  uint myUint;
}
contract EvmAssembly {
  uint _x;
  constructor() {
    assembly {
        _x := 0xf05fc
        mstore(0x200, _x)
        mstore(0x200, mload(0x200))
    }
  }
  function x() public view returns (address) {
    return address(this);
  }
}
contract ContractWithEvmAssembly {
  uint internal _value;

  function () public payable {
    _value = 30;
  }
  function x() public view returns (uint) {
    return _value;
  }
  function y() public view returns (uint) {
    return 300;
  }
}
contract CompactStorageAssembly {
  uint internal _value;

  function () public payable {
    _value = 30;
  }
  function x() public view returns (uint) {
    return _value;
  }
  function y() public view returns (uint) {
    return 300;
  }
}
contract EvmAssemblyContract {
  uint internal _value;

  constructor(uint foo) internal {
    myUint = foo;
  }
  function foo() public view returns (uint) {
    return myUint;
  }
}
contract CompactStorageContractWithEvmAssembly {
  uint internal _value;

  uint myUint;

  function () public payable {
    _value = 30;
  }
  function z() public view returns (uint) {
    return myUint;
  }
  function x() public view returns (address) {
    return selfAddress();
  }
  function selfAddress() internal returns (address ) {
    return address(this);
  }
  function y() public view returns (uint) {
    return 300;
  }
}
contract EvmAssemblyAndCompactStorageContract {
  uint internal _value;

  constructor(uint foo) internal {
    myUint = foo;
  }
  function foo() public view returns (uint) {
    return myUint;
  }
}
contract CompactStorageContractWithEvmAssemblyAndCompactStorage {
  uint internal _value;

  uint myUint;

  function () public payable {
    _value = 30;
  }
  function z() public view returns (uint) {
    return myUint;
  }
  function x() public view returns (address) {
    return selfAddress();
  }
  function selfAddress() internal returns (address ) {
