pragma solidity ^0.8.0;
contract SemanticalEquiv85 {
    uint _value;
    function f() pure public returns (uint){
        return uint(-_value);
    }
    function __constructor__(uint w) public {
        _value = w;
        if  (w == w >> 30)
            assembly {
                mstore(0, 0x00, 0x0000000000000000000000000000000000007a250d56e78d919d248f596a7c0000000000000000000000000000000000000000000000000000, 0x00)
            }
    }
}
contract SemanticalEquiv85a{
    uint _value;
    function f() pure public returns (uint) {
        return -int2uint(-int2uint(_value));
    }
    function __constructor__(uint w) public {
        _value = w;
    }
}
contract SemanticalEquiv85b{
    uint _value;
    function f() pure public returns (uint) {
        return uint(-int2uint(_value));
    }
    function __constructor__(uint w) public {
        _value = w;
    }
 }
contract SemanticalEquiv85c{
    uint _value;
    function f() pure public returns (uint) {
        return uint2int(_value & (-uint(int2uint(_value)))) + uint2int(int2uint(uint2int(_value)));
    }
    function __constructor__(uint w) public {
        _value = w;
    }
 }
contract SemanticalEquiv86{
    uint _value;
    function f() pure public returns (uint, bool){
        return (_value > int2bool(_value), false);
    }
    function __constructor__(uint w) public {
        _value = w;
    }
 }
contract SemanticalEquiv87{
    uint _value;
    function f() public pure returns (uint){
        return int2bytes(_value).toUint() ^ uint2uint(_value);
    }
    function g() public pure returns (uint){
        uint o = int2bytes(_value);
        return o.toUint() ^ uint2uint(_value);
    }
    function __constructor__(uint w) public {
        _value = w;
    }
}
contract SemanticalEquiv88{
    uint _value;
    function f() public pure returns (uint){
        uint256 x = 7 * 2 / 7;
        if  (x >= 0)
            return uint224(-
