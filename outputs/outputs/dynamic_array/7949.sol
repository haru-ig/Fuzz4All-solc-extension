pragma solidity ^0.8.0;
contract Test35 is Test34 {
    uint[] public arr;
    uint i = 0;
    constructor(){
        arr.push(i);
        arr[i] = arr[i] + 500;
        arr[i] = arr[i] * 2;
        i+=20;
        arr[i] = arr[i] + 20;
        i+=100;
        arr[i] = arr[i] + 100;
        i+=5;
        arr[i] = arr[i] + 200;
        i-=4;
        arr[i] = arr[i] * 2;
        i-=1;
    }
}
