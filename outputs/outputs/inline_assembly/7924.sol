pragma solidity ^0.8.0;
contract L73 {
    uint x;
    function sneaky() public {
        if (true) {
            x = x + 2;
        } else {
            x = x + 5;
        }
    }
}
