pragma solidity ^0.8.0;
library A {
    uint internal _number;
    function increment() internal view returns (uint) {
        _number++;
    }
}
contract B {
    modifier onlyFirst {
        require(A.increment() == 1);
        _;
    }
    constructor() public {
        __A();
    }
    function __A() internal onlyFirst {}
    receive () external payable {}
}
contract C {
    uint private _number;
    bool started;
    constructor() public {
      __B();
    }
    function __B() internal {
      started = true;
    }
    receive () external payable {
        if (!started) {
            __C();
            __C();
        }
    }
    function __C() internal payable onlyFirst {}
}
