pragma solidity ^0.8.0;
contract semanticsolidity0821b { function f() public pure { uint x = 0; x += 1; } }

pragma solidity ^0.8.0;
contract test { function f() public pure { semanticsolidity0822b(semanticsolidity0821b(semanticsolidity0821b(semanticsolidity0821b(semanticsolidity0821b()))); }); }
contract test { function f() public pure { semanticsolidity0822b(semanticsolidity0821b(semanticsolidity0821b(semanticsolidity0821b(semanticsolidity0821b()))); semanticsolidity0822b(semanticsolidity0821b(semanticsolidity0821b(semanticsolidity0821b(semanticsolidity0821b()))))); } }
