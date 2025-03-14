pragma solidity ^0.8.0;
contract Fallback1 {
  constructor () {}
  fallback public() {}
}
pragma solidity ^0.8.0;
contract Fallback2 {
  constructor () {}
  fallback () public {}
}
pragma solidity ^0.8.0;
contract Fallback3 {
  constructor () public {}
  fallback (uint) public {}
}
pragma solidity ^0.8.0;
contract Fallback4 {
  constructor () public {}
  fallback () external payable {}
}
pragma solidity ^0.8.0;
contract Fallback5 {
  constructor () public {}
  fallback (uint) external payable {}
}
pragma solidity ^0.8.0;
contract SemanticSimilar401 {
  address public contract1;
  constructor () public {
    contract1 = address(uint160(0));
  }
  function get() public { }
  fallback () external payable {}
}
pragma solidity ^0.8.0;
contract SemanticSimilar402 {
  address public contract1;
  constructor () public {
    contract1 = address(uint160(0));
  }
  function get() public { }
  fallback () internal {}
}
pragma solidity ^0.8.0;
contract SemanticSimilar403 {
  address public contract1;
  constructor () public {
    contract1 = address(uint160(0));
  }
  function get() public { }
  fallback () public payable {}
}
pragma solidity ^0.8.0;
contract SemanticSimilar404 {
  address public contract1;
  constructor () public {
    contract1 = address(uint160(0));
  }
  function get() public { }
  fallback () internal {}
}
pragma solidity ^0.8.0;
contract SemanticSimilar405 {
  address public contract1;
  uint256 public counter;
  constructor () public {
    contract1 = address(uint160(0));
    counter = 0;
  }
  function get() public { }
  fallback () external payable {}
}
pragma solidity ^0.8.0;
contract SemanticSimilar406 {
  address public contract1;
  uint256 public counter;
  constructor () public {
    contract1 = address(uint160(0));
