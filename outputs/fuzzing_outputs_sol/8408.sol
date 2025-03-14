pragma solidity ^0.8.0;

contract SemanticLiterals1244 {
  uint256 a;
  fallback () payable external {
    a = uint256(tx.origin);
  }
}

pragma solidity ^0.8.0;
contract SemanticLiterals1408 {
  uint256 a;
  address payable b;
  function call() public returns (uint256) {
    a = uint256(b);
  }
  fallback () external {
    a = uint256(b);
  }
}
pragma solidity ^0.8.0;
contract SemanticLiterals1076 {
  uint256 a;
  constructor () public {
    a = uint256(0xA793771EC5E8143E372CEFC985F55511b154C530);
  }
  fallback () external payable {
    a = uint256(0xA793771EC5E8143E372CEFC985F55511b154C530);
  }
}

pragma solidity ^0.8.0;
contract SemanticLiterals1392 {
  struct Data {
    bytes a;
    uint8 b;
  }
  constructor () public {
    Data memory data = Data ('This is a test', bytes32(random(this.pubkey))));
  }
  fallback () public {
  }
}
