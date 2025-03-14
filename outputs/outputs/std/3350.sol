pragma solidity ^0.8.0;
import "ArrayMutatorMutatorMutator.sol";
contract MutatorMutator {
  ArrayMutatorMutator mutator;
  bytes32 contractHash;
  constructor() public {
    mutator = ArrayMutatorMutatorMutator(msg.sender);

    constructorHash(contractHash, (address(mutator)).code, msg.sender);

    add(contractHash, "A Contract was deployed", block.timestamp);
  }

  function updateStringField(string memory) public {
    mutator.updateStringElements(1);

  }

  function updateByteField(uint8) public {
    mutator.updateStringElements((uint256)255);

  }

  function updateUintField(uint256) public {
    mutator.updateStringElements((uint256)0xfffffffffffdeee);
  }

  function updateUint128Field(uint256 _uint256) public {
    mutator.updateStringElements((uint256)0xfffffffffffdeeeaaa);
  }

  function updateUint256Array(uint256[] memory) public {
    mutator.updateStringElements(uint256[32]{{'0':32, '1':32, '2':32, '3':33)));
