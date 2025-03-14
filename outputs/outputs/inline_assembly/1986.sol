pragma solidity ^0.8.0;
contract OldY {
    function a(uint256 x) public {
        uint256 x2 = x + x;
        a[x] = x;
        b.push(x);
        b.push(1);
        a[x] = x;
        b.push(x2*10);
        c.push(x2);
    }
    function a2(uint256 x) public {
        uint256 x2 = x + x;
        a2[x] = x;
        b2.push(x);
        b2.push(1);
        a2[x] = x;
        b2.push(x2*10);
        c2.push(x2);
    }
}
mapping (uint32 => uint32) public test;
emit test(2 * test[3]);
mapping (uint256 => uint256) public
