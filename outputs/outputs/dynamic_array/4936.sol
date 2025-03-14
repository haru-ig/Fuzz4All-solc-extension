pragma solidity ^0.8.0;
contract Test67a {
    uint flag;
    uint x;
    uint y;
    function foo() public {
        x=10;
        y=20;
        State memory s;
        s.flag=bytes(flag);
        s.flag=bytes(y);
        s.flag=bytes(flag);
        s.flag=bytes(y);
    }
}
