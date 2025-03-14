pragma solidity ^0.8.0;
contract ArrayExample {
    function testMe() public returns(uint[5]) {
        uint[] memory a = new uint[](5);
        a[0] = 20;
        a[1] = 30;
        uint[] memory c = a;
        for (uint i = 0; i < c.length; i++) {
            c[i] = a[i] + a[i];
        }
        c[4] = a.length;
        return c;
    }
}
