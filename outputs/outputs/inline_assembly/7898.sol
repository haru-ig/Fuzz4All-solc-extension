pragma solidity ^0.8.0;
contract L45 {
    uint x;
    constructor() {
        x = 10;
    }
    modifier modifyCalled {
        x = x + 1;
        _;
    }
    function use() public modifyCalled {
        x = 20;
    }
    function use2() public modifyCalled {
        x = 30;
    }
    function use3() public modifyCalled {
        x = 40;
    }
}
