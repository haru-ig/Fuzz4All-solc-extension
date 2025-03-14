pragma solidity ^0.8.0;
contract mutated12C {

    struct Test {
        uint x;
        uint256 y;
        mapping(uint => Test) a;
    }

    Test t;

    constructor () {
        t.a[0].x;
        t.a[1].x;
        t.a[1].x = 1;

        function test(uint x) public {
            t.a[0].x;
            t.a[1].x;
            t.a[1].x = 1;
            t.a[1].x;
        }
    }
}
