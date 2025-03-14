pragma solidity ^0.8.0;
contract Bugz is Contract {
    function isBugger()
        public pure
        returns (bytes memory, bool)
    { unchecked { if (0x01FF & 0xFFFFFFFF == 0x00000000000000000000000000000000000000000000000000000000000000) { return "0x0f"; } else { return "0x0 "; } } return "0x0 "; }
}
