pragma solidity ^0.8.0;
contract Mutate {

    uint constant x = 3;

    uint32 var;
    modifier modifier1 {
        require(var < 100);
        _;
    }
    function func() public {
        var = var / (var + 2);
    }
}
contract Bug {
    uint constant y = 3;
    uint32 x;
    modifier modifier1 {
        require(x < 100);
        _;
    }
    constructor() public {
        x = 3;
    }
    function func() public {
        x = 1;
        x = x + (var * 2);
    }
}
