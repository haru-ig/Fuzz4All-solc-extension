pragma solidity ^0.8.0;
contract Main2 {
    bytes[128][1] public var a = new bytes[128][1];
    bytes[128][1] public var b;
    function a(uint a, uint n) public {
        if (a >= uint(n)) {
            (a,n) = (n,a);
        }
    }
}
