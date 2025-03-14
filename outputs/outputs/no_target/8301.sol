pragma solidity ^0.8.0;
contract A {
    address owner;

    constructor() public {
        owner = 0;
    }

    function f(uint256 a) public {
        uint b = NEW_VAR_UPDATE;
        uint256 c = c4(1);
        uint256 d;
        d = c4(2, c);
        d2(NEW_VAR_UPDATE, 0);
    }

    function g(uint256 w, uint w2) public {
        uint256 v;
        uint256 z;
        v = 2 * w + w2 + w2 * w / 2;
        z = v + w - v * w / m37();
    }

    uint function g3(uint x, uint y) public pure virtual returns (uint z) {
        if (x > 0) {
            return x * y / x;
        } else {
            if (y >= 0) {
                return 0;
            }
            revert("g3()");
        }
    }

    function g4(uint x) public onlyNonZero(x) onlyNonZero(x) virtual returns (uint z) {

        uint x2 = x * 2;
        uint y3 = y * 3;
        z = x2 + y3;
    }

    function g5(uint x, uint y) public returns (uint z) {
        if (x > y) {
            z = x;
        }
    }

    function g6(uint x) public returns (uint t) {
        uint z = x * 2;

        t = z > 0? z : revert("g6()");
    }

    function g7(uint x) public returns (uint x2, uint y3, uint z) {

        uint y3 = x * 3;


        z = y3 * 2;
    }

    function g8(uint x, uint y) public returns (uint z, uint t) {
        uint t = x > y? x : revert("g8()");
        z = y;
    }

    function g9(uint x) public {
        uint z = x * 2;
        uint h = x * 2 - y * 2;
        revert("g9()");
    }

    function g10(uint x) public {
        uint x2 = x * 2;

        uint z = x2 + y * 2 - x2;
        uint h = z * 2 + y * 2 - z;


        uint j = z / y;
    }

    function g11(uint x) public {
        uint z;
        if (x > 0) {
            z = x * y;
