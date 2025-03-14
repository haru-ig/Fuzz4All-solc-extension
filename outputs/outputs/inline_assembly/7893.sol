pragma solidity ^0.8.0;
contract L55 {
    uint x;
    constructor() {
        x = 5;
    }
    modifier modifyCalled {
        x = x + 1;
        x = x * 2;
        emit Changed();
    }
    function use() public modifyCalled {
        x = 5;
    }
    function use2() public modifyCalled {
        x = 10;
    }
    function use3() public modifyCalled {
        x = 20;
    }
    event Changed();
}
