pragma solidity ^0.8.0;
contract SolidityTest{
    function main() public {
        uint8 u;
        uint16 s;
        u = (uint8)0xFF;
        s = (uint16)0xFFFF;
        if (u == (uint8)0xFF)
            revert();
    }
}
