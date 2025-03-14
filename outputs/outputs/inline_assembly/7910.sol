pragma solidity ^0.8.0;
contract L72 {
    function sneaky() public {
        uint x = 5;
        while(x > 0) {
            x = x - 2;
        }
        revert();
    }
}
