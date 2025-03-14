pragma solidity ^0.8.0;
contract L74 {
    uint x;
    modifier modifyCalled {
        x = x;
        _;
    }
    function use() public {
        for(uint i = 0; i < 10; i++) {
            x = x < 10? 10 : x;
            x = x < 10? 10 : x;
            x = x < 10? 10 : x;
            x = x < 10? 10 : x;
            x = x < 10? 10 : x;
            x = x + 1;
            x = x + 2;
        }
        x = 10;
    }
}
