pragma solidity ^0.8.0;
contract SemanticallyEqual {
    event Happened(uint, address);
    address toAdd;

    struct Result {
        uint x;
        uint32 y;
        uint yz;
        uint8 z;
        uint56 t_x;
        uint64 t_y;
        uint72 t_yz;
    }

    uint64 _now= uint64(block.timestamp);
    uint public z;

    function _setResult(uint x, uint32 y, uint z, uint48 t_x, uint56 t_y, uint64 t_yz) internal {
        Result memory result;
        result.x = x;
        result.y = y;
        result.z = z;
        result.t_x = t_x;
        result.t_y = t_y;
        result.t_yz = t_yz;
        emit Happened(_now, toAdd);
    }
    function setResult(uint x, uint32 y, uint z, uint48 t_x, uint56 t_y, uint64 t_yz) public {
        _now = uint64(block.timestamp);
        toAdd.sendValue(0x3ED2DBA2DA6276204000);
        _setResult(x, y, z, t_x, t_y, t_yz);
    }
 }
contract Example {
    event Happened(uint _x, uint _y);
    SemanticallyEqual public sf;
    address public toAdd;

    constructor(SemanticallyEqual s) public {
        sf = s;
        toAdd = address(sf);
        sf.setResult(1, 2, 3, 4, 5, 6);
    }
}





contract SemanticallyEqual {
    event Happened(uint _x, uint _y);
    SemanticallyEqual sf;
