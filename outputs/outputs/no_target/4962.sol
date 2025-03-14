pragma solidity ^0.8.0;
contract A { address payable f(uint256 a) public pure {} }
contract B { address payable f(uint256 b) public pure {} }
contract BC { address payable f(uint256 a, uint256 b) public pure {a += 2;} }
contract CA { address payable f(uint256 a) public pure {assert(a == 3);}  }
contract CB { address payable f(uint256 a) public pure {assert(a > 5);}  }
contract CCB { address payable f(uint256 a) public pure {assert(a > 5);} }
contract CC { address payable f(uint256 a) public pure {assert(a > 5);}  }
contract CCC { address payable f(uint256 a) public pure {assert(a == 5);}  }
