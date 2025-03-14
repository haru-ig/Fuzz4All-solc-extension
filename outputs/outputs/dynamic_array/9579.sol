pragma solidity ^0.8.0;
contract Main2 {
    uint[] a;
    function a(uint a) public {
        if (a > uint(a.length)) {
            a.push(uint(a.length) + uint(a[0]));
        }
    }
}
