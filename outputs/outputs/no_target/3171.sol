pragma solidity ^0.8.0;
contract eight {
    uint r;
    function __func__() public {
        r = 15; r = ((r + 20) + 5) + ((r + 5) + --r);
    }
}


pragma solidity ^0.7.0;
contract nine {
    uint r;
    function __func__() public {
        r = 2;
        uint x = 10;
        uint y = 10;
        r = x >= y? x / y --x : y / x ++y;
    }
}
