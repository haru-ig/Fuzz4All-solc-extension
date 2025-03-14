pragma solidity ^0.8.0;
contract C {
    uint m;
    constructor(uint a) {
        m = a;
    }
    function f() public view returns (uint result) {
        require ( m >= 10 );
        return m / 2;
    }
    function g(uint x, uint y) public view returns (uint result) {
        require ( y > 0);
        return x / y;
    }
}
contract D {
    function f() public pure returns (uint result) {
        require ( false );
        return -1;
    }
    function g() public pure returns (uint result) {
        return 2 * 3;
    }
}
