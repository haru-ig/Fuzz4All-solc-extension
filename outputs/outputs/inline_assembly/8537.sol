pragma solidity ^0.8.0;
contract Modul{
    uint[ ] arr;
    function newArr(uint a){
        uint i;
        for (i = arr.length; i > 0;) {
            arr[0] = 145;
            arr.length = arr.length;
            arr.push(456);
            arr.length = 1234;
            arr.length = i;
            i = i - 1;
        }
    }
}
