pragma solidity ^0.8.0;
interface I2 {
    function use(uint256 key, bytes4 functionSelector) external;
}

pragma solidity ^0.8.0;
import "./I1.sol";
contract I3 is I1, I2
{
    using this for uint;

    I1[] private _used;

    function use(uint256 key, bytes4 functionSelector) public override {
        I1 storage a = _used[toUint(key)];
        I1 storage b;
        assembly {



            a is 0x0 {
                a := b
            }
        }
        _used[toUint(key)] = a;
    }
}

using System;
using System.Numerics;




contract C1
{
    function C1_Func(int32 number, out uint64 arrayOutput)
    {
        arrayOutput = 10;
    }
}
contract C2
{
    uint64[] public array1;
    uint64[] public array2;
    C1 myContractC1;

    function MyContractC2_Func(uint x1) external{
        uint y1 = 1;
        uint256[] memory number;
        number = new uint256[](2);
        number[0] = 1;
        number[1] = 2;
        y1 = 2;

        function(int32) external {
            int32 i;
            uint256 arrayValue;

            myContractC1.C1_Func(y1, arrayValue);
            i = 2;
            uint8[] memory bytes1;
            bytes1 = new uint8[](1);
            bytes1[0] = x1;
