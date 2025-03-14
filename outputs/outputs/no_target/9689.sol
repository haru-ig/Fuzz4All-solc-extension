pragma solidity ^0.8.0;
contract Bug3 { function isBugger() public { unchecked { if (0x01FF & 0xFFFFFFFF == 0x00000000000000000000000000000000000000000000000000000000000000000000) { return 0x01ff; } } } }

pragma solidity ^0.8.0;
contract Bug4 { function isBugger() public { unchecked { if (0x01FF & 0xFFFFFFFF == 0x00000000000000000000000000000000000000000000000000000000000000000) { return 0x01FF; } else { return 0x000000000000000000000000000000000000000000000000000000000000000000000; } } } }

pragma solidity ^0.8.0;
contract Bug5 { function isBugger() public { unchecked { if (0x01FF & 0xFFFFFFFF == 0x0000000000000000000000000000000000000000000000000000000000000000000) { if (false) { return 0x01FF; } } } } }
pragma solidity ^0.8.0;
