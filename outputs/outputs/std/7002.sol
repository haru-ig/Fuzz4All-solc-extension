pragma solidity ^0.8.0;
contract Array1 {
    uint256[1] a;
}
contract Array1_Uint256_Uint256 {
    uint256[1] a;
}
contract Array1_Set_Array_Uint256_Uint256_Uint256 {
    uint256[1] a;
    uint256[1] b;
    uint256[1] c;
    uint256[1] d;
}
contract BitwiseAND_uint256_uint256 {
    uint256 a;
    uint256 b;
    uint256 a2;
}
contract BitwiseAnd_uint256_uint256_uint256_uint256_uint256 {
    uint256 a;
}
contract FunctionCall {
    uint[3] a;
    uint[2][7] b;
}
contract Call {
    function() internal { }
}
contract EVM {
    function _assert(bool a) internal view {
        if(!a) { throw; }
    }
}
contract StringTest {
    mapping (uint8[] => uint256[]) myMap;
    uint256[42] myUintArray;

    function insertUint(uint _i) public {
        _assert(_i > 0);
        myUintArray[_i] = _i;
        emit NewUint(_i);
    }

    event NewUint(uint i);

    function insertString(bytes20 _s) public {
        require( _s.length > 0 );
        uint276 a = uint276( uint256( myUintArray[_s.substring(0, 1)] ) <<  27 | uint256( myUintArray[_s.substring(1, 2)] ) << 22 | uint256( myUintArray[_s.substring(2, 3)] ) << 19 | uint256( myUintArray[_s.substring(3, 4)] ) << 16 | uint256( _s.substring(4) ) );
        bytes32 b = bytes32( a );
        require( b.substring(0, 16) ==  bytes32(
