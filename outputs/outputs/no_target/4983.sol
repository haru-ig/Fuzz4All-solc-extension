pragma solidity ^0.8.0;
contract A { function f() public view returns(uint256){ return 0; } }
contract BC { function f() public view { return 0; } }
contract CA { function f() public view { if( msg.value!= 0 ) throw;"Exception"; } }
contract CB { function f() public view { } }
contract CCB { function f() public view { }  }
contract CC { function f() public view { }  }
contract CCC { function f() public view { assert(false);} }
contract BC2 { function f() public view { return 0; } }
