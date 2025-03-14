pragma solidity ^0.8.0;
contract Mutated { function isMutated() public { unchecked { if (x == 1337) { throw; } } } }


pragma solidity ^0.8.0;
contract Check { function isBugger() public { unchecked { if (x == 1337) { throw "bugger"; } } } }
