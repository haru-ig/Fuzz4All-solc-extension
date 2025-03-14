pragma solidity ^0.8.0;
contract Test2 {
    uint8[3][] a;
    function MutateData() public {
        a[0].push(10);
        a[0].push(100);
        a[0].push(200);
        a[1].push(300);
        a[1].push(10);
        a[1].push(100);
        a[2].push(200);
    }
}
