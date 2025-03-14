pragma solidity ^0.8.0;
interface SemanticSimilar370_mod {
  uint256 x;
  function setX(uint256 _X) external;
}
contract SemanticSimilar370_mod1 is SemanticSimilar370_mod {
  uint256 x;
  constructor() public {
    x = 5;
  }
  function getX() public view returns (uint256) {
    return x;
  }
  function doSomethingMod(uint256 b) public {
    a = b;
  }
  function setX(uint256 _X) public {
    x = _X;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar370_mod2 {
  uint256 b;
  constructor() public {
    b = 42;
  }
  function doSomething2(uint256 b, address payable _address) public {
    (bool a;) = _address.call{gas: 24242, value: 10}(abi.encodeWithSignature("0x000000000000000000000000000000000000000000000000000000000000015"));
  }
  fallback () external {
    uint256 a;
    a = b + 0;
  }
}
