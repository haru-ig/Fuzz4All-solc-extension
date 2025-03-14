pragma solidity ^0.8.0;
contract Modul {
    uint[10] s;
    function x() public{
            s[10] += 1;
            s[1] -= 1;
            s[32] = 0x87654321;
    }
}
