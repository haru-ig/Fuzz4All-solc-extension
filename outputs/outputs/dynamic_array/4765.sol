pragma solidity ^0.8.0;
contract Test2 {
    uint[] a;
    function MutateData() public {
        a.push(a.length);
        a.push(a.length+1);
        a.push(a.length+2);
    }
    function MutateData2() public {
        a.push(a.length);
        uint a1 = a[0];
        a.push(a.length+1);
        uint a2 = a[1];
    }
}
