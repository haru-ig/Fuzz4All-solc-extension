pragma solidity ^0.8.0;
contract L72 {
    uint x;
    function sneaky() public {
        for(uint i = 1; i > 5; i++) {
            x = x + 2;
        }
    }
}
