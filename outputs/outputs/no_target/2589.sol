pragma solidity ^0.8.0;
contract semanticsolidity0822a { function f() public pure { uint x = 500; uint y = uint(x) * 100; } }
contract semanticsolidity0822b { function f() public pure { uint x = 500; uint y = uint(x) * 100; uint z = uint(x) / 100; } }
contract semanticsolidity0822c { function f() public pure { uint x = 200000000; uint y = x * 0 + uint160(-1); } }
contract semanticsolidity0822d { function f() public pure { uint x = 0; bool y = uint(-1) == x; } }
contract semanticsolidity0822e { function f() public pure { uint x = 0; bool y = uint(uint160(-1)) == x; } }
contract semanticsolidity0822f { function f() public pure { uint x = 0; bool y = uint160(-1) == x; } }
contract semanticsolidity0822g { function f() public pure { uint x = 0; bool y = uint10000000000000000000000000 == x; } }
contract semanticsolidity0822h { function f() public pure { uint x = 0; uint y = 500 * uint160(-1); uint z = uint(500) * uint160(-1); uint w = uint(uint160(-1)) * uint160(-1); } }
contract semanticsolidity0822a { function f() public pure { uint x = 5; uint y; uint z; uint u; uint w; uint q; uint r; } }
