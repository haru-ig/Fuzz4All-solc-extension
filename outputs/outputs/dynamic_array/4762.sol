pragma solidity ^0.8.0;
contract Test10 {
    uint[] a;
    uint[] b;
    mapping (uint => uint) c;
    mapping (uint => uint) d;
    function MutateData() public {
        a.push(10);
        a.push(20);
        a[0] = 30;
        a = a.slice(1);
        a[9] = 40;
        b[a.length] = 50;
        b.push(c[a.length] = 60);
        b.push(d[c[a.length]] = 70);
    }
}
