pragma solidity ^0.8.0;
contract third4 {
    function f() public pure returns (bytes memory) {
        bytes memory b = new bytes(2);
        b[0] = 0x01;
        return b;
    }
    uint256 a;

    function __check(a uint256) {
        a.transfer(0x1111111111111111111111111111111111111111);
    }

    function __check(a bytes32) {
        a.transfer(0x11111111111111111111111111111111111111);
    }

    function h() public pure {
        assert(f()!= 0x00);
        return;
    }
}
  contract third2 is third3, third4 { }
