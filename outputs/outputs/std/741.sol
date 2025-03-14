pragma solidity ^0.8.0;
interface MinterInterface {
  function mint() external;
}
contract MutatedMinter {
  address public operator;
  MinterInterface public minter;
  constructor() {
    minter = MinterInterface(msg.sender);
    operator = msg.sender;
  }
  modifier onlyMinter() {
    require(msg.sender == operator || msg.sender == minter, 'Only the minter can call this method');
    _;
  }
  modifier onlyMinterOrSelf {
    require(msg.sender == minter || msg.sender == operator, 'Only the minter or the operator can call this method');
    _;
  }
}

pragma solidity ^0.8.0;
interface MinterInterface {
  function mint() external;
}
contract MutatedMinter {
  address public operator;
  MinterInterface public minter;
  constructor() {
    minter = MinterInterface(msg.sender);
    operator = msg.sender;
  }
  modifier onlyMinter() {
    require(msg.sender == operator || msg.sender == minter, 'Only the minter can call this method');
    _;
  }
  modifier onlyMinterOrSelf {
    require(msg.sender == minter || msg.sender == operator, 'Only the minter or the operator can call this method');
    _;
  }
}
