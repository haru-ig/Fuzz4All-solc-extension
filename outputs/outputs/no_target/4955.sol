pragma solidity ^0.8.0;
contract A { function f() public pure {a256++;} }
contract B { function f() public pure {b256++;} }
contract BC { function f() public pure {b256 = a256-2;} }
contract CA { function f() public pure {assert(a256 == 5);}  }
contract CB { function f() public pure {assert(a256 == 5);}  }
contract CCB { function f() public pure {assert(b256 == 7);} }
contract CC { function f() public pure { assert(b256 == 7);} }
contract CCC { function f() public pure {assert(b256 == 7);} }
contract CCDD { function f() public pure { assert(b256 == 9);} }
contract CCDDDB { function f() public pure { assert(b256 == 11);} }
contract CCDDDBBC { function f() public pure { assert(b256 == 13);} }
