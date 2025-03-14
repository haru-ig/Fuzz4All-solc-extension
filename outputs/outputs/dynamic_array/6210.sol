pragma solidity ^0.8.0;
interface I
{
    function mutate() external;
}

pragma solidity ^0.8.0;
interface I
{
    function mutate() external;
}
contract C
{
    I   test;
    uint[]  arr;

    constructor (address _newAddress)
    {
        test = I(_newAddress);
        arr = new uint[](4);
        arr[1] = 3;
    }

    function doSomeWork () public {}

    function setArray (address[] memory x) public
    {
        arr = x;
    }

    function array(address[] memory x) public pure returns (address[] memory)
    {
        return x;
    }

    function array1(uint[] memory x) public pure returns (uint[] memory)
    {
        return x;
    }

    function arrayMutify (uint arrayToMutate[] memory a) public pure
    {
        for (uint i = 1; i < a.length; i++) {
            a[i] = 1;
        }
    }

    function calldata (uint x) public pure returns (uint) {
       return x + 10 * 40;
    }

    function mutatedCalldata (uint x) public pure returns(uint) {
       return x;
    }

    function array(uint[] memory x) public pure returns(uint[] memory)
    {
        return x;
    }

    function array1(uint[] memory x) public pure returns (uint[] memory)
    {
        return x;
    }
}
