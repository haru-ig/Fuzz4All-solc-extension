pragma solidity ^0.8.0;
contract L73 {
    uint x;
    modifier modifiesCalled {
        if(x > 20) {
            revert();
        }
        _;
    }
    function sneaky() public {
        x = x + 3;
        x = x + 2;
        x = x + 2;
        x = x + 2;
    }
    function sneaky2() public {
        x = x + 2;
        x = x + 2;
        x = x + 2;
        x = x + 2;
    }
}
