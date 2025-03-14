pragma solidity ^0.8.0;
contract C is C {
    constructor() public {
        C.data3[C.data2.push(5)] = 6; C.data2.push(4);
    }
}
