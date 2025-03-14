pragma solidity ^0.8.0;
contract L71 {
    modifier modifiesCalled {
        uint x = 0;
        if(x > 5) {
            revert();
        }
        _;
    }
    function sneaky() public {
        for(uint i = 1; i > 5; i++) {
            x = 2 * x;
        }
        revert();
    }
}

pragma solidity ^0.8.0;
contract L71 {
    modifier modifiesCalled {
        uint x = 0;
        if(x > 5) {
            revert();
        }
        _;
    }
    function sneaky() public {
        for(uint i = 1; i > 5; i++) {
            x = 2 * x * x;

            if(x > 3) {
                return;
            }
        }
        revert();
    }
}
