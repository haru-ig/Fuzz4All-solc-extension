pragma solidity ^0.8.0;
contract Test43_DynamicArray3 {
    uint[] public A;
    uint[] public B;
    constructor() public {}
    function push() public {
        A.push(1);
        B.push(1);
        A.push(1);
        B.push(12);
    }
}
