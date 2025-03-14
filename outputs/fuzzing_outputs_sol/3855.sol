pragma solidity ^0.8.0;
#pragma reverts(0, 0, "Revert message");
contract Example4 {
    function __fallback (address _unused) public pure returns (bytes memory) {
        return new bytes(0);
    }
}
