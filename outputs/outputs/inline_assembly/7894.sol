pragma solidity ^0.8.0;
contract L45 {
    uint x;
    constructor() {
        x = 2;
    }
    function use() public constant modifyCalled {
        return x + 1;
    }
    function use2() public constant modifyCalled {
        return x + 10;
    }
    function use3() public constant modifyCalled {
        return x + 20;
    }
}
