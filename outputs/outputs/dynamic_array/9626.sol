pragma solidity ^0.8.0;
contract Main {
    address[10] public arr;
    uint public contractAddr;
    constructor () public {
        contractAddr = address(new Main());
        arr[0] = contractAddr;
        arr[1] = contractAddr;
        while(arr.length < 10) {
            arr[arr.length + 1] = contractAddr;
        }
    }
}
