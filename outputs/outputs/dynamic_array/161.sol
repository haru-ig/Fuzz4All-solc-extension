pragma solidity ^0.8.0;
contract C3 {
    uint256[] public a;
    uint256[] public b;
    constructor() {
        a.push(20);
        b[4] = 34;
        b.push(42);
        a.push(42);
        a[3] = 42;
        a.push(42);
    }
}
pragma solidity ^0.8.0;
contract C4 {
    uint256[] public a;
    uint256[] public b;
    uint256 v;
    uint256 w;
    uint256 x;
    uint256 y;
    constructor() {
        a.push(20);
        b.push(42);
        a.push(42);
        a.push(42);
    }
}
pragma solidity ^0.8.0;
contract C5 {
    uint256[] public a;
    uint256[] public b;
    uint256[] public c;
    uint256[] public d;
    uint256[] public e;
    uint256[] public f;
    uint256 v;
    uint256 w;
    uint256 x;
    uint256 y;
    uint256 z;
    constructor() {
        a.push(20);
        c.push(33);
        b.push(42);
        a.push(42);
        a.push(42);
        a[3] = 42;
        a.push(42);
        a.push(42);
        a.push(42);
        z = 0;
        a[3] = 42;
        z = 2;
    }
}
