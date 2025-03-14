pragma solidity ^0.8.0;
contract C {
    function f() public returns (uint256) {
        uint256[] memory a;
        a.push(0);
        a.push(0);
        uint256[] memory x;
        x = a;
        return (a.length + x.length);
    }
}

pragma solidity ^0.8.0;
contract D {
    uint16[] memory a;
    uint[] memory b;
    uint8[] memory c;
    constructor () {
        b.push(0);
        c.push(0);
        a.push(123);
        a.push(0);
        a[3] = 0x123;
        a[4] = 0x123;
        a[2] = 0x123;
        a[0] = 0x123;
    }
}
