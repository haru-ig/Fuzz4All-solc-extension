pragma solidity ^0.8.0;
contract Test67b {
    struct State {
        uint flag;
    }
    uint flag;
    uint x;
    uint y;
    function foo() public {
        uint tmpx=x; x=y; y=tmpx;
        State memory s;
        s.flag=x;
        s.flag=y;
    }
}

pragma solidity ^0.6.0;
contract Test67a {

    struct State {
        uint flag;
        uint flag2;
    }
    uint flag;
    uint x;
    uint y;
    function foo() public {
        uint temp=x; x=y; y=temp;
        State memory s;
        s.flag=x;
        s.flag2=y;
        s.flag=x;
        s.flag2=y;
    }
    function bar() public {
        uint temp=x; x=y; y=temp;
        State memory s;
        s.flag=x;
        s.flag2=y;
        s.flag=x;
        s.flag2=y;
    }
}
