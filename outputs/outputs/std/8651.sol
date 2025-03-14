pragma solidity ^0.8.0;
interface IExample
{
    function add2(uint n) {
        uint old = arrayAddressStorage[index];
        setArrayAddressStorage(index, old + n);
    }
}
