pragma solidity ^0.8.0;
contract SemanticSimilar15 {
  uint256 public x;
  uint256 public y;
  function f() public returns(uint256) {
    uint256 a = x;
    uint256 c = a;
    x = a * c;
    uint256 z = c / c;
    y = c / z;
    return x * z;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar16 {
  uint256 public x;
  uint256 public w;
  function f() public returns (uint256) {
    uint256 a = x;
    uint256 c = a;
    w = a / c;
    uint256 z = a * c;
    uint256 y = c / z;
    x = a;
    return y;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar17 {
  string public tokenType;
  function f() public {
    tokenType = "Token1";
    uint256 y = 100;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar18 {
  function f() public {
    uint token1Balance = 128;
    token1Balance[1] = 1;
    uint token2Balance = 3;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar19 {
  receive() external payable {
    emit EtherReceived();
  }

  event EtherReceived();
}


pragma solidity ^0.8.0;
contract SemanticSimilar20 {
  uint256 public x;
  uint256 public y;
  function f() public returns (uint256) {
    uint256 a = x;
    uint256 c = a;
    x = a / c;
    uint256 z = a * c;
    uint256 y = a * z;
    return x * z;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar21 {
  function f() public {
    uint tokenBalance = token(0);
    tokenBalance = 1;
  }

  function token(uint id) public returns (uint) {
    address msgSender = msg.sender;
    uint256 balance = 100;
    emit EthReceived(msgSender, balance);
