pragma solidity ^0.8.0;
contract Test1 {
    uint[] a;
    function MutateData() public {
        a.push(10);
        a.push(100);
        a.push(200);
    }
    function MutateData2() public {
        a.push(10);
        uint a1 = a[0];
        a.push(100);
        uint a2 = a[1];
    }
}
