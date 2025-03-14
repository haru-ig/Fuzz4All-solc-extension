pragma solidity ^0.8.0;
contract Modul{
        uint public s;
        fallback() external {
            if(s < 3) { return; }
            s += 1;
            s = s - 2;
        }
}
address deployer = 0x01a55D6D05808D2e8101bCE942eE643841B7251C;
address contractAddress = 0x83f993c3f1c8a1681045a2c25252ec510d01cf47;
Modul(contractAddress).fallback();
