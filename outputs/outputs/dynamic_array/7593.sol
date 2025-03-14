pragma solidity ^0.8.0;
contract Test21 {
    uint[] internal a;
    constructor() public {
        a.push(20);
        a.push(10);
        a = a[1..];
    }
}
