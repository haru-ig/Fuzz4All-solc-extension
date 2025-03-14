pragma solidity ^0.8.0;
contract Test {
    function value() public pure returns(bool) {
        return true;
    }
}
```

**Answer**: <span id='answer'>
For this exercise you need to solve the following problem:
 - [x] The contract Test:
```solidity
pragma solidity ^0.7.5;

  contract Test {
      function value() public pure returns(bool) {
          return true;
      }
  }
```
1. The contract Test:
```solidity
pragma solidity ^0.8.0;

  contract Test {
      function value() public view returns(bool) {
          return true;
      }
  }
```
2. The contract Test:
```solidity
pragma solidity ^0.8.0;

      contract Test {
          function value() public pure returns(bool) {
              return true;
          }
      }
```
3. The contract Test:
```solidity
pragma solidity ^0.8.0;
  contract Test {

      address public owner;

      struct Owner {
          address ownerAddress;
          bytes32 creationHash;
      }

      mapping (address => Owner) private _owners;

      mapping (bytes32 => address) _contractAddresses;

      function createContract(address addr) public returns (address) {
          bytes32 creationHash = keccak256(abi.encodePacked("contract contract {}"));
          _contractAddresses[creationHash] = addr;
          _owners[addr].ownerAddress = msg.sender;
          _owners[addr].creationHash = creationHash;
          return addr;
      }

      function getContractAddress(bytes32 creationHash) public view returns (address) {
          return _contractAddresses[creationHash];
      }

      function getOwnersFromContract(address contractAddress) public view returns (address) {
          return _owners[contractAddress].ownerAddress;
      }

      function getOwnersFromCreation(bytes32 creationHash) public view returns (address) {
          return _owners[_contractAddresses[creationHash]].ownerAddress;
      }

      event Log(string message);

  }
```
4. The contract Test:
```solidity
pragma solidity ^0.8.0;

      contract Test {

          event Log(string message);

          mapping(address => bool) private _allowances;
          mapping(address => address) private _tokens;
          address public _owner;
          mapping(address => uint) private _fee;
          mapping(address => bool) private _lockedBalances;
          mapping(address => bool) public _isOwner;
          mapping(address => bytes32) private _userCreationHashes;


          modifier notAllowed {
              require(!allowance[msg.sender][_owner]);
              _;
          }

          modifier locker {
              _lockedBalances[msg.sender] = true;
              _;
          }

          modifier notLockedBalanceIsLocked {
