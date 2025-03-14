pragma solidity ^0.8.0;
contract Modifications2_SEM_v2 {
    constructor(uint256 _x, uint256 _y) public{
        Mod2_v2 m2;
        m2._x = _x;

        address _address = address(this);
        a = _x / _y;
        b = _x - a / _y;
    }
    Mod2_v2 public m2;
   uint256 public a;
   uint256 public b;
}
pragma solidity ^0.8.0;
contract Mod15_SEM_v2 {
    constructor(uint256 _x, uint256 _y) public{
        Mod15_v2 m15;
        m15._x = _x;
        m15._y = _y;

        address _address = address(this);
        a = _x / _y;
        b = _x - a / _y;
    }
   uint256 public a;
   uint256 public b;
}
pragma solidity ^0.8.0;
contract Mod14_SEM_v2 {
    constructor(uint256 _x, uint256 _y) public{
        Mod14_v2 m14;
        _x = _x * _y;
        uint80 _x80 = uint80(_x);
        uint128 _x128 = uint128(_x);
        uint32 _x256 = uint32(_x);
        uint56 _x5 = uint56(_x);
        uint8112 _x8112 = uint8112(_x);
        a = ( _x / _y ) * _x80;
        b = ( _x / _y ) - a * _x80;
    }
   uint80 public a;
   uint80 public b;
}
pragma solidity ^0.8.0;
contract Mod13_SEM_v2 {
    constructor(uint256 _x, uint256 _y) public{
        Mod13_v2 m13;
        uint256 _x256 = uint256(_x * _y);
        m13._x = _x256 / _y;
        address _address = address(this);
        a = _x256 / _y;
        b
