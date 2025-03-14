pragma solidity ^0.8.0;
contract L73Fixed {
    uint[6] x;
    function sneaky() public {
        if (true) {
            x[3] += 3;
        } else {
            x[2] += 2;
        }
    }
}
