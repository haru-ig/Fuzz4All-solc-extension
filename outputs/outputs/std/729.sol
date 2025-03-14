pragma solidity ^0.8.0;
contract MutatedMinter is MinterInterface {
  function update(uint _amount) public {
    minter.mint(_amount);
  }
}
contract ImmutableMinter {
  MinterInterface immutable public minter;

  constructor(uint _amount) {
    minter.mint(_amount);
  }

  function update() public {
  }
}
contract MutatedImmutableMinter is MinterInterface {
  SimpleMinter immutable minter;

  constructor(uint _amount) {
    minter.mint(_amount);
  }


  function update(uint _amount) public {
    minter.mint(_amount);
  }
}
