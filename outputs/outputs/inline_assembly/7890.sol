pragma solidity ^0.8.0;
contract L44 {
    uint x;
    constructor() {
        x = 5;
    }
    modifier modifyCalled {
        x = x + 2;
        _;
    }
    function use() public modifyCalled {
        x = 10;
    }
    function use2() public modifyCalled {
        x = 20;
    }
    function use3() public modifyCalled {
        x = 30;
    }
}
