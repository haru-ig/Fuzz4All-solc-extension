pragma solidity ^0.8.0;
contract L44 {
    uint x;
    constructor() {
        x = 5;
    }
    modifier onlyCalled {
        x = 99;
        x = x + 1;
        _;
    }
    function use() public onlyCalled {
        x -= 2;
        x = 100;
    }
}







contract L44 {
    uint x;
    constructor() {
        x = 5;
    }
    modifier onlyCalled {
        x = 99;
        x = x + 1;
        _;
    }
    function use() public onlyCalled {
        x -= 2;
        x = 100;
    }
}


contract L44 {
    uint x;
    constructor() {
        x = 5;
    }
    modifier onlyCalled {
        x = 99;
        x = x + 1;
        _;
    }
    function use() public onlyCalled {
        x--;
        x = x + 1;
    }
}
