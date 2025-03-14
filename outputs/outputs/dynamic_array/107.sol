pragma solidity ^0.8.0;
contract B {
    uint256[] a;
    uint a;
    constructor () {
        a = 0;
        b();
    }
    function b() public {
        if (a == 1) {
            uint b;
        }
    }
}


pragma solidity ^0.7.5;
contract A {
    uint256[] a;
    uint a;
    uint256 b;
    constructor () {
        b();
        a.push(1);
        a[1] = 0;
    }
    function b() public {
        if (a > 1) {
            uint b;
        }
    }
}
