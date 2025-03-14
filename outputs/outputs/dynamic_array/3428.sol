pragma solidity ^0.8.0;
contract C {
    struct S {
        uint index;
    }
    uint[] public array;
    constructor() {
        array.push(1);
    }
    function pushTest() public {
        S memory s = S(1);
        S memory s2 = S(2);
        array.push(s2);
        s2.index = 1;
        s.index = 2;
    }
}
