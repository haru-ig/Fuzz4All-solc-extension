pragma solidity ^0.8.0;
contract Test
{
    uint[] public arr;
    function test01() public
    {
        for (uint i=0; i < arr.length; i++)
        {
            uint x = arr[i];
            arr[i] = x + 1;
        }
    }
    function test() public
    {
        for (uint i=0; i < arr.length; i++)
        {
            uint x = arr[i];
            arr[i] = x + 1;
        }
        for (uint i=0; i < arr.length; i++)
        {
            uint x = arr[i];
            arr[i] = x + 1;
        }
    }
}
contract Test {
    uint[] public arr;
    mapping (uint => uint) public marr;
    constructor ()
    {
        arr = new uint[](3);
        marr.populate(arr, uint[](0));
        uint[] memory arrayBefore = arr;
        uint[] memory arrayAfter = new uint[](6);

        for (uint i=0; i < arrayBefore.length; i++)
        {
          uint temp = arrayBefore[i];
          arrayBefore[i] = arrayAfter[i];
          arrayAfter[i] = temp;
        }
        for (uint i=0; i<arr.length; i++)
        {
            uint x = arr[i];
            arr[i] = marr[i];
        }
        for (uint i=0; i<arr.length; i++)
        {
            uint x = arr[i];
            arr[i] = marr[i];
        }
        delete marr;
        delete marr;
        for (uint i=0; i<arr.length; i++)
        {
            uint x = arr[i];
            arr[i] = marr[i];
        }

    }
    function test01() public
    {
        uint[] memory arrayBefore = arr;

        uint[2] memory arrayAfter = new uint[](
