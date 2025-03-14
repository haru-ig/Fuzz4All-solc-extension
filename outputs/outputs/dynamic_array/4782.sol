pragma solidity ^0.8.0;
contract Test2 {
    uint8[] a;

    constructor() {
        a = new uint8[](1);
    }

    function MutateData() public {
        a.push(10);
        a.push(100);
        a.push(200);
        a.push(10);
        a.push(100);
        a.push(200);
    }
}
