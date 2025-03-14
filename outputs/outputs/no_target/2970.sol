pragma solidity ^0.8.0;
contract third4 {
    function f() public pure returns (bytes memory) {
        bytes memory b = new bytes(2);
        b[0] = 0x01;
        return b;
    }
    uint256 a;
}
  contract third3 is third4 { }
