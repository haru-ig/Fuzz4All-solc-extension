pragma solidity ^0.8.0;
contract L45 {
    uint x;
    modifier modifyCalled {
        x = x + 1;
        x = x * 2;
        x = x + 10;
        _;
    }
    function use() public modifyCalled {
        x = 100;
        x = 200;
    }
}
