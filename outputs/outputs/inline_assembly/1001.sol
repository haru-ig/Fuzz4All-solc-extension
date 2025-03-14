pragma solidity ^0.8.0;
contract SimpleStorage {


function publicStorage() public pure {}
function publicStorageInternal() public pure {
  InternalStorage.publicStorage();
}
function publicStorageInternalOnly() public pure {
  InternalStorage.publicStorage();
  delete InternalStorage.publicStorage;
}


function inlineStorage() public pure {
  InternalStorage.publicStorage();
  InternalStorage.publicStorage();
}
}

contract InternalStorage {
  string public public_field = 'Field 1';
}

contract TestContract {
  SimpleStorage simpleStorage;
  bool first = true;

  constructor(SimpleStorage _simpleStorage) {
    simpleStorage = _simpleStorage;
  }
  function testFunction() public returns (uint256 x) {
    x = inlineStorage();
    if (!first) {
      x += simpleStorage.publicStorage();
    }
  }
}
