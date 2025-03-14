pragma solidity ^0.8.0;
contract Mutator {
  uint _storageValue;

  constructor(uint initialValue) {
    _storageValue = initialValue;
  }

  function f() public {
    _storageValue = 15 * _storageValue;
    emit StorageContractModified(_storageValue);
  }
}

pragma solidity ^0.8.0;
contract MutatedStorage {
  struct ContractStorage {
    uint value;
  }



  ContractStorage storage storageContract;
  address payable _contract;

  uint public _initialValue;
  uint public _storageValue;

  event ContractModified(
     uint indexed before, uint indexed after,
     address indexed contractAddress
 );

  constructor (uint initialValue) {
    uint oldValue = initialValue;
    storageContract.value = 17 * initialValue;
    _initialValue = initialValue;
    _storageValue = 15 * initialValue;
    emit ContractModified
      (
         oldValue,
        _storageValue,
        address(storageContract)
      );
  }

  function f() public {
    storageContract.value = 20 * _storageValue;
    _storageValue = 25 * _storageValue;
    emit ContractModified
      (
         _storageValue,
        _storageValue + _initialValue,
        _contract
      );
  }
}

pragma solidity ^0.8.0;
contract MutatorCaller {
  uint _storageValue;
  address payable _contract;

  uint public _initialValue;

  event ContractModified
    (uint indexed before, uint indexed after, address indexed contractAddress);

  constructor(uint initialValue, address payable contractAddress) {
    uint oldValue = initialValue;
    storageContract.value = 17 * initialValue;
    _initialValue = initialValue;
    _storageValue = 15 * initialValue;
    emit ContractModified(
      oldValue,
      _storageValue,
      contractAddress
    );
    _contract = contractAddress;
  }

  function f() public {
    uint currentStorageValue = _storageValue + _initialValue;
    address contractAddress = address(storageContract);
    _storageValue = 25 * _storageValue;
    storageContract.value = 20 * _storageValue;
    emit ContractModified(
      _storageValue,
      currentStorageValue,
      contractAddress
    );
  }

}
