pragma solidity ^0.8.0;
*/

contract ArrayContract {



    bytes32[] public result;
    address[] public array;
    mapping(address => uint) arrayMapping;


    constructor()
    {
        result.push(uint256(byte(1)));
        result.push(uint256(byte(2)) << 1);
        result.push(uint256(byte(8)) << 16 | uint256(byte(16)) << 8);
        array.push(uint256(byte(0)));
        array.push(uint256(byte(1)) << 1);
        array.push(uint128(uint256(byte(4))) << 10 | uint128(uint256(byte(8)) << 2 | uint256(byte(15)) << 13));
        array.push(uint8(uint256(byte(16)) << 7 | uint256(byte(17)) << 14 | uint256(byte(19)) << 22));
        array.push(1 << 25);
        array.push((1 << 25) + (1 << 25));
        array.push(uint256(byte(11)));
    }


    function setArrayMapping (address addr)
    {
        arrayMapping[addr] = uint256(array.length);
    }


    function pushArray ()
    {
        bytes32 temp = uint256(array[uint256(array.length - 1)]);
        bytes32 temp2 = uint256(temp >> 25) + uint256(result.length);
        result.push(temp2);
    }


    function printArray ()
    {
        uint len = uint256(array.length);
        for(uint i = 0; i < len; ++i)
        {
            uint128 num = uint128(array[uint256(i)]);
            if(i!= len - 1)
                console.log(uint256(result[uint256(i + 1)] ^ num) + " | ");
            else
                console.log(uint256(result[uint256(i + 1)] ^ num) + " |");
        }
    }


    function printArray2 ()
    {
        for(uint i in arrayMapping)
        {
            console.log(uint256(arrayMapping[i]) + " | ");
        }
    }


    function isEqual(bytes memory a, bytes memory b) internal pure returns (bool)
    {
        bytes memory a1 = a;
        bytes memory b1 = b;
        if (a1.length!= b1.length) return false;
        for(int i = 0; i < a1.length; i++) if (a1[i]!= b1[i]) return false;
        return true;
    }


    function findMinimum(uint arr1[], uint arr2[]) internal pure returns (uint)
