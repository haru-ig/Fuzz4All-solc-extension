pragma solidity ^0.8.0;
contract c {
    function M4() public pure returns (uint8) {
        uint8 i = unchecked((uint8 (127) * 256));
        return i;
    }
}
