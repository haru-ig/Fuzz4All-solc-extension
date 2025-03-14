pragma solidity ^0.8.0;
contract Test15 {
    function a() public {
       A = A + 1;
    }
    function b() public {
        A = 37;
        c();
        if (A!= 49)
            revert();
    }
    uint public A = 100;
    function c() public {
        D = D + A + B;
        C = 0;
    }
    uint public D;
    uint public C;
}

pragma solidity ^0.8.0;
contract Test16 {
    uint A;
    function a() public {
        A = 20;
        pushMany();
        popMany();
        if (A!= 100)
            revert();
    }
    function b() public {
        A = 60;
        pushMany();
        popMany();
        if (A!= 40)
            revert();
    }
    uint[] public A;
    uint public I;
    function pushMany() public {
        for (I = 0; I < 40; I++)
            A[I] = I;
    }
    function popMany() public {
        for (I = 0; I < 40; I++)
            A[I + 11]++;
    }
}
