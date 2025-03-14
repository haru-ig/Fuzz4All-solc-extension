pragma solidity ^0.8.0;
contract L73 {
    uint x;
    function sneaky() public {
        uint i;
        for(i = 1; i > 5; i++) {
            x = x + 2;
        }
    }
}
