pragma solidity ^0.8.0;
contract Arrays2 {
    function f() public {
        Arrays4 storage a = Arrays4(0);
        a.a2 = new bytes[](2);
        a.a2[1] = new bytes(0);
        a.a2[0] = new bytes(0);
    }
}
