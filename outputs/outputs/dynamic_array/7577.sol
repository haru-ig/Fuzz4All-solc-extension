pragma solidity ^0.8.0;
contract Test20 {
    uint public A;
    uint public B;
    uint public C;
    constructor() public {
        A = 1;
        B = 1;
        A += 1;
        A += 1;
    }
}
contract Test21 {
    uint public A;
    uint public B;
    uint public C;
    uint public D;
    uint public E;
    constructor() public {
        A = 1;
        B = 1;
        A += 1;
        B += 1;
        E += 1;
        B += 1;
    }
}
contract Test22 {
    uint public A;
    uint public B;
    uint public C;
    uint public D;
    uint public E;
    uint public F;
    constructor() public {
        A = 1;
        B = 1;
        A += 1;
        B += 1;
        E += 1;
        D += 1;
        C += 1;
        A += 1;
    }
}
contract Test23 {
    uint public A;
    uint public B;
    uint public C;
    uint public D;
    uint public E;
    uint public F;
    constructor() public {
        A = 1;
        B = 2;
        D += 1;
        C += 1;
        F += 1;
        C += 1;
    }
}

pragma solidity ^0.8.0;
contract Test24 {
    function test1() public {
        uint[1][25] memory a;
        uint x,y;
        for(x=0;x<1;x++)
        for(y=0;y<25;y+=1)
            a[x][y] += 1;
    }
    /* This contract does not compile. This is because the storage for array a is
     * being overwritten as the for loop iterates
