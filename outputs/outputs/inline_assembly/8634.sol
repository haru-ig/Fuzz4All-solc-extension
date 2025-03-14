pragma solidity ^0.8.0;
contract Modul {
    function mulAdd(uint a, uint b, uint c) public pure returns (uint) {
        uint temp0 = 0;
        uint temp1 = 0;
        for (uint i = 0; i < 100000; i++)
            temp0 = (a + b) * mod(c, (a + b));
        return (a + b + temp1);
    }
}
