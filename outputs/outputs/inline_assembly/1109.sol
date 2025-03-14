pragma solidity ^0.8.0;
contract MutatedContract {
  uint x;
  constructor () {
    x += 3;
  }
}

pragma solidity ^0.8.0;
contract MutatedContract {
  uint x;
  address a;
  constructor () {
    a = msg.sender;
    x += 3;
  }
}

pragma solidity ^0.8.0;
contract MutatedContract {
  uint x;
  address a;
  constructor () {
    a = msg.sender;
    a = 1;
    x += 3;
  }
}
