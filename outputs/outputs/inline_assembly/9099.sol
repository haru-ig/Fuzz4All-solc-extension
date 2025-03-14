pragma solidity ^0.8.0;




contract Contract {
    uint a;
    uint b;
    uint c;
    uint e;
    function f() public{}
}
contract Main {
    function g()public{
        Contract x;
        x.f();

        (e, b, c) =  (8, 6, 2);

        Lib.getDiv (b,  x.e);


    }
}



contract Contract {
    uint a;
    uint b;
    uint c;
    uint e;
    uint d;
    function f() public{

        Lib.getDiv (b,  x.e);
        c = x.d;
        Lib.getDiv (b, d);
        d = x.c;

        for(uint i=0; i< 4; i++) {
            uint sum = Lib.getDiv(b, Lib.getDiv(d, c));



            Lib.getDiv (b, d);
            Lib.getDiv (b, c);

            b = Lib.getDiv(b, d);
            sum = Lib.getDiv(b, sum);
            console.log(sum);
        }
    }
}
