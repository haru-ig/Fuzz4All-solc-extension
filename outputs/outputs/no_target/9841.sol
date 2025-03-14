pragma solidity ^0.8.0;
contract x {

    uint public foo;
    constructor (uint x) public {
        require(x > 0);
        foo = x;
    }
    function m() public returns (uint y) {
        y = foo;
    }
}
contract y {
    x contract;
    constructor() public {
        contract = new x(1000);
    }
    function m() public returns (uint z) {
        z = contract.m();
    }
}
contract z {
    function m1() private pure returns (uint) {
        return 1;
    }
    function m2() private pure returns (uint) {
        return 2;
    }
    function f() public pure returns (uint) {
        return m1() + m2();
    }
}
contract w {



    uint private x;
    constructor() public {
        x = 42;
    }
    function m() public pure returns (uint x) {
        x += x;
    }
}
