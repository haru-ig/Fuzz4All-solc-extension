pragma solidity ^0.8.0;
contract Preliminary {
  function update(string memory, uint256) public;
}

pragma solidity ^0.8.0;
contract Mutate {
  SimpleMinter immutable public minter;

  constructor(SimpleMinter _minter) {
    minter = _minter;
  }

  function update(string memory name, uint256 balance) public {


    if (address(minter) == msg.sender) {
      minter.update(name, balance);
    }
  }
}
