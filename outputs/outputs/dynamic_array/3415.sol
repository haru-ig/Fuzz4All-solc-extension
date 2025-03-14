pragma solidity ^0.8.0;
contract B {
    struct S {
        uint v;
        uint[] array;
    }
    uint v;
    S s;
    constructor() {
        S memory memory = S({v:200, array:new uint[](2)});
        s = memor memory;
        v=2;
    }
    function pushTest() public {
        s.array.push(3);
        v=2;
    }
}
