pragma solidity ^0.8.0;
contract A { function f(uint256 a) public pure {} }
contract B { function f(uint256 b) public pure {} }
contract BC { function f(uint256 a, uint256 b) public pure {a += 2;} }
contract CA { function f(uint256 a) public pure {assert(a == 3);}  }
contract CB { function f(uint256 a) public pure {assert(a > 5);}  }
contract CCB { function f(uint256 a) public pure {assert(a == 5);} }
contract CC { function f(uint256 a) public pure {assert(a > 5);}  }
contract CCC { function f(uint256 a) public pure {assert(a == 5);}  }
contract CBCA { function f(uint256 a) public pure {{} } }
contract CCACB { function f(uint256 a) public pure {{ if (!a) return; }} }
contract AB { function f(uint256 a) public pure {{} } }
contract CBCAEC { function f(uint256 a) public pure {{ } } }
contract AABCD { function f(uint256 a) public pure {{}} }
contract BABC { function f(uint256 a) public pure {{ } } }
contract ABCE { function f(uint256 a) public pure {{}} }
contract AACBD { function f(uint256 a) public pure {{}} }
contract BAAE { function f(uint256 a) public pure {{{} } } }
contract AACED { function f(uint256 a) public pure {{}} }
contract CABED { function f(uint256 a) public pure {{ }} }
contract ACEBD { function f(uint256 a) public pure {{ }} }
contract CEDAB { function f(uint256 a) public pure {{ }} }
contract ACDAB { function f(uint256 a) public pure {{ }} }
contract BABCD { function f(uint25
