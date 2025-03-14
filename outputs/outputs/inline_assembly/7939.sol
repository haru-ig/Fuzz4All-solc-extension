pragma solidity ^0.8.0;

contract L73Fixed {
    uint[6] x;
    function sneaky() public view returns(uint) {
        if (true) {
            return x[3];
        } else {
            return x[2];
        }
    }
}
