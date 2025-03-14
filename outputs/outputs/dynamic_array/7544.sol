pragma solidity ^0.8.0;
contract Test43_Semantics4 {
    uint[] public  A;
    uint[] public  B;
    uint test;
    constructor()  public {
        B[1] = 12;
        A[12] = 12;
        A[12]= 12;
    }
    modifier test1()    {
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
        function f() public pure returns (uint)  {
            return test;
        }
        a = msg.sender.balance;
        b = f();
        assert(a > b);
        c =  f();
        assert(c ==  f());
        d = a+b;
        e = a+b;
        assert(d == e);
        f();
        assert( msg.sender.balance ==  a + b );
        g();
        assert( msg.sender.balance ==0 );
        assert( c ==  f() );
    }
}

pragma solidity ^0.8.0;
struct Struct1 {
    uint z;

    uint[] public  x;
}
contract Test43_Semantics5 {
    uint[] public  A;
    uint[] public  B;
    uint test;
    constructor()  public {
        A[0] = 0;
        B[0] = 0;
        A[0] = 0;
        B[0] = 0;
        A[0] = 0;
        B[1] = 12;
    }
    modifier test1()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
    }
}
