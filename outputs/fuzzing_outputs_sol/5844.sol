pragma solidity ^0.8.0;
contract MovedSemantics {
    uint a;
    uint b;
    uint c;
    address d;
    function test() public {
        a = 3;
        b = 2;
        c = 1;
        d = address(0);
        c = 2;
        b = 1;
        a = 2;
        a = a+1;
        b = b+1;
        a = a+1;
        if(a >= 2 || b <= 1){
           if(!d.send(1)) a = a+1;
           d = d;
           d.send(2);
        }
    }
}
contract Caller {
    MovedSemantics c;
    function test() public {
        c = MovedSemantics(0x18c6cb9f079bf46a56b74a54125b690ac80b6eb8);
        c.test();
    }
}
