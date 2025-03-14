pragma solidity ^0.8.0;
contract MutatorCaller{
    struct S{bool a; bool b;}
    function mut(address x, uint32 y) public {
        S memory i;
        require( i.a == 1 );
        x.mut(i.b, i.a);
        x.mut(i.b, i.a);
        if (y % 2 == 0) {
            x.mut(i.b, i.a);
            x.mut(i.b, i.a);
        }

        require( i.a == 1 );

        x.mut(i.b, i.a);
        i.a = 2;
    }
}
