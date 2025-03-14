pragma solidity ^0.8.0;
contract L72 {
    uint x;
    modifier modifiesCalled {
        if(x > 5) {
            revert();
        }
        x = x + 2;
        _;
    }
    function sneaky() public {
        for(uint i = 1; i > 5; i++) {
            x = x + 2;
        }
        revert();
    }
}
