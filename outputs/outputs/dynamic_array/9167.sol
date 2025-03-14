pragma solidity ^0.8.0;
contract Optimized {
    uint[] a;
    function setArray() public {
        a.push(1);
        a[2] = 2;
        a[3] = 3;
        a.pop();
        a.pop();
    }
}
