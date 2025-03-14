pragma solidity ^0.8.0;
contract Mod_0027 {
    function bad(uint8 v) public pure returns (uint8) {
        return (v & 1);
    }
}
contract Check_0026 is Mod_0027 {
    function bad2() public returns (uint8) {
        bad(2);
        return bad(3);
    }
}
