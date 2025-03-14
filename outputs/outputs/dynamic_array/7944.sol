pragma solidity ^0.8.0;
contract Test34 {
    uint[] public arr;
    uint i = 0;
    constructor(){
        arr.push(i);
        arr[i] = arr[i] + 500;
        i+=10;
        arr[i] = arr[i] + 100;
        i-=4;
        arr[i] = arr[i] + 500;
    }
}
