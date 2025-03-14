pragma solidity ^0.8.0;
contract Mutate200 {
    uint[] memory array;
    address[] memory addresses;
    function Mutate200() public {
        uint[] memory a = new uint[](10);
        for (uint i = 0;  i < 10; i++){
            a[i] = 0;
        }
        a[7] = 1;
        array = a;
        addresses = new address[](array.length);
        for (uint i = 0; i < addresses.length; i++){
            addresses[i] = 0;
        }
        addresses[3] = 1;
    }

    function indexof(uint[] memory a, uint index) public returns (uint){
        return a[index];
    }

    function add() public {
        array[10] = ((array[array.length.sub(10)]) + ((array[array.length - array[10].sub(1)] * 2) / 3)));
        for (uint i = 0; i < array.lenght; i++){
            array[i] = array[i].add(array[10]);
        }
    }

    function multiply() public {
        uint32 result = (0);
        for (uint i = 0; i < array.length; i++){
            result = result.mul(2);
        }
    }
    function getZeroIndex() public pure returns (uint) {
        uint result = 0;
        for (uint i = 0; i < 10; i++){
            result = result +
