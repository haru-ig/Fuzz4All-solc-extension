pragma solidity ^0.8.0;
contract fourth{
    uint a;
    uint b;
    constructor() public {
        a = 18;
        b = 27;
    }
    function foo() public {
        unchecked {
            a += b;
            b = 0;
        }
    }
}
contract fifth{
    uint a;
    uint b;
    uint c;
    constructor() public {
        c = 3;
        a = 1;
        b = 2;
    }
    function foo() public {
        unchecked {
            a += b + c;
            c = 0;
        }
    }
}
contract sixth{
    uint a;
    uint b;
    uint c;
    constructor() public {
        a = 9;
        b = 6;
        c = 2;
    }
    function foo() public {
        unchecked {
            a += b;
            a += c;
            c = 0;
        }
    }
}
contract seventh{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        a = 8;
        b = 2;
        e = 4;
    }
    function foo() public {
        unchecked {
            a += b;
            a += b + e;
            a += a;
            b += 9;
            e = 0;
        }
    }
}
