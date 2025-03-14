pragma solidity ^0.8.0;
contract Test15 {
    uint[] public C;
    uint public D;
    uint public E;
    constructor() public {
        C = [1];
        D = 2;
        E = 3;
        C.push(1);
        D++;
        E--;
    }
}

```
