pragma solidity ^0.8.0;
contract L71 {
    uint x = 10;
    modifier modifiesCalled {
        if(x > 5) {
            revert();
        }
        _;
    }
    function sneaky() public {
        for(uint i = 1; i > 5; i++) {
            x = x + 2;
            x = x + 2;
        }
        revert();
        x = 15;
    }
}
