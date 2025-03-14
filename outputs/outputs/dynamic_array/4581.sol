pragma solidity ^0.8.0;
struct MyData {
    uint[8] bbb;
}
contract Simple {
    function f() public {
        MyData memory z = MyData({ bbb: [ 1,2,3,4,5,6,7,8] });
        z.bbb[1] += 1;
        z.bbb[1] += 1;
        z.bbb[2] += 1;
        z.bbb[2] += 1;
        z.bbb[3] += 1;
        z.bbb[3] += 1;
        z.bbb[4] += 1;
        z.bbb[5] += 1;
        z.bbb[6] += 1;
        z.bbb[7] += 1;
        z.bbb[7] += 1;
        selfdestruct(address(1));
        z.bbb[8] += 1;
    }
}
