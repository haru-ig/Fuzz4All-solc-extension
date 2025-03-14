pragma solidity ^0.8.0;
contract E7
{
    uint _x;
    uint public _y;
    function add() public returns (uint256) {
        uint _z = 8;
        _x = add(uint256(7));
        return add_internal1_0(uint256(5));
    }
    function add_internal1_0 (uint _x) internal returns (uint256) {
        _y = _y ^  (_x == uint256(0) + uint256(827));
        return add_internal2_0();
    }
    function add_internal2_0() internal returns (uint256) {
        return 7;
    }
}

pragma solidity ^0.8.0;
contract E7
{
    uint public _x;
    uint _y;
    uint _z;
    function add() public returns (uint256) {
        uint _w = 9;
        _x = add(uint256(7));
        _y = 4;
        _z = add(uint256(8));
        return add_internal1_0(uint256(5));
    }
    function add_internal1_0 (uint _x) internal returns (uint256) {
        _z = _z ^  (_x == uint256(0) + uint256(7));
        return add_internal2_0();
    }
    function add_internal2_0() internal returns (uint256) {
        return 6;
    }
}

pragma solidity ^0.8.0;
contract E7
{
    uint public _x;
    uint _y;
    uint public _z;
    uint public _w;
    constructor() public {
        uint _v = 0;
        uint _u = 677;
        _v = add(_v, _u);
        if (true) ;
    }
    function add(uint _a) pure public returns (uint) {
        return add_internal1_0(_a);
    }
    function add_internal1_0(uint _a) internal pure returns (uint) {
        return 5
