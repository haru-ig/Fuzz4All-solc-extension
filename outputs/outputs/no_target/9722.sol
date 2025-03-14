pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure returns (uint8) { return 1; } }

pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure { revert("bugger"); } }

pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure returns (uint8) { uint16 i = 90; return i >= 128? 1 : 0; } }
pragma solidity ^0.8.0;

contract Bug1910 { function bug1910() public { uint a; Contract d = Contract(address(a)); uint8 x; a = 50; uint(d) = 200; (a < x) && (x < 300); true; d.bug1910(); } }
