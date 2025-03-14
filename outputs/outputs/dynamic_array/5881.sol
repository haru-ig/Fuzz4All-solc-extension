pragma solidity ^0.8.0;
contract Test2024 {
    uint16[5] f;
    function test() public pure returns(uint16) {
        return (uint16(f[11]));
    }
    function set(uint16 i, uint16 n) public {
        f[i] = n;
    }
}
