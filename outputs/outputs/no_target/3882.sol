pragma solidity ^0.8.0;
interface E {
        function test() public;
}
contract X {
        uint public x;
     function test() external {
            uint n = - 999;
            uint y = 179;
            x = n;
            if ( n >= x )  x = n + y;
            uint y2 = 4711;
            assert ( x - y2 == -38269 );
     }
}
contract Y {
        uint[] public a;
     function test() external {
            uint n = - 999;
            uint y = 179;
            a.push(n);
            a.push(y);
            uint x = a[0];
            if ( n >= x )  x = n + a[1];
            uint y2 = 4711;
            assert ( x - y2 == -38269 );
     }
}
contract Z {
        uint[] public a;
     function test() external {
            X x;
            bool b = false;
            x.test();
            a.push( b );
            b =!b;
            x.test();
            assert ( a.length == 2 );
            a[0] = false;
            a[1] = false;
            uint x2 = a[0];
            if (!b )  x2 =!x2;
            assert ( x - x2 == -1 );
     }
}
contract D {
        uint[] public a;
     function test() external {
            X x;
            bool b = false;
            x.test();
            a.push( b );
            b =!b;
            x.test();
            assert ( a.length == 2 );
            a[0] = false;
            a[1] = false;
            uint x2 = a[0];
            if (!b )  x2 =!x2;
            assert ( x - x2 == -1 );
     }
}
