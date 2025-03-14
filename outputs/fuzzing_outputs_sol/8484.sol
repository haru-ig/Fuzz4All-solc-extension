pragma solidity ^0.8.0;
contract CallerExample5 {
  constructor(address payable x) {
    x.transfer(msg.value);
  }
}

pragma solidity ^0.8.0;
contract CallerExample3 {
  constructor() payable {}

  receive() external payable {}
}

pragma solidity ^0.8.0;
address payable X;
contract CallerExample4 {
  receive() payable {}
  constructor() {
    X.transfer(msg.value);
  }
}
