pragma solidity ^0.8.0;
library Math
{
    uint public constant _MAX_VALUE         = 5654078;
    uint256 public constant _MAX_256_VALUE    = 0x20000000000000000000000000000000000000000000000000000000000000000;
    uint256 public constant _MAX_256_SIGNED_VALUE =0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
    uint256 public constant _MAX_256_SIGNED_VALUE_2 =uint256(-0x200000000000000000000000000000000000000000000000000000000000001);
}

pragma solidity ^0.8.0;
contract Test
{
    uint[] public _uintArray;
    uint256[3] private _uintArray2;
    uint256[3] public _uintArray3;

    uint[] public _uintArray4;

    uint256[3] private _uintArray5;
    uint256[3] public _uintArray6;


}
contract Test1
{
    uint32[3] public _intArray;
    uint32[3] public _intArray2;
    uint32[3] public _intArray3;

    uint32[3] public _intArray4;

    uint256[4] private _intArray5;
    uint256[4] public _intArray6;


}

pragma solidity ^0.8.0;
contract Test {
    uint256[3] public _intArray;
    uint32 public _intArray2;

    function sum() returns (uint){
        uint r;
        r = uint(12);
        r += uint(5);
        r -= 23;
        r *= uint(1);
        r /= 10;
        r += 1;
        r -= 0
