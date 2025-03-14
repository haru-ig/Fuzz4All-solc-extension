pragma solidity ^0.8.0;
struct S {
    uint counter = 0;
    function() public {
        counter = counter + 1;
    }
}
contract D {
    mapping(uint => uint) counter;
    mapping(uint => bool) exists;
    constructor(address memory) public {
        exists[1] = true;
        exists[2] = true;
        doesNotExists = false;
    }
}
contract M {
    C c;
    function M(address[] memory) public {
        c = new C();
    }
}
contract C is D {
    M m;
    function C() public D(address(0)) {
        m = new M(x);
    }
}
