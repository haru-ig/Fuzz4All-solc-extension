pragma solidity ^0.8.0;
import "./i.sol";
contract c {
    mapping(uint => mapping(address => uint)) x;
    uint y;
    uint z;
    function _m() internal pure returns (uint) {
        x[0][1] = 1;
        x[x.max()][y] = 2;
        z = 0;
        assert (x[1][address(this)].x == 1);


        return 1;
    }
    function _m(uint x) internal pure returns (uint) {
        x = 2;
        z = 3;
        z = 3;
        assert (x == 3);
        assert (z == 3);
        assert (x == 2);
        return 2;
    }
    function _m(uint x, uint y) internal pure returns (uint) {
        y = 1;
        z = 2;
        z = 2;
        assert (x == 2);
        assert (x == 1);
        assert (z == 3);
        return 3;
    }

    function _m2() internal pure returns (uint) {
        z = 3;
        z = 2;
        assert (y == 2);



        return 3;
    }

    constructor() {
        x = (2:mapping(address => uint));
        y = 3;
        y = 4;
        z = 0;
        c.m._m2();
    }
}

pragma solidity ^0.8.0;
import "./i.sol";

contract c is i {
    uint x;

    function _m() public pure returns (uint) {
        x = x + 3;
        x = x + 2;
        return x;
    }
}
