pragma solidity ^0.8.0;
contract Test2 {
    uint8[] a;
    function MutateData() public {
        a.reserve(3);
        a.push(10);
        a.push(100);
        a.push(200);
        a.push(10);
        a.push(100);
        a.push(200);
        a.push(10);
        a.push(100);
        a.push(200);
        assert(a.length == 10);
    }
}
