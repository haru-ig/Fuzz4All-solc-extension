pragma solidity ^0.8.0;
contract Modul {
    function mod(uint a, uint b) public nonpayable pure returns (uint) {
        uint temp = a % b;
        return temp;
    }
}
