pragma solidity ^0.8.0;
contract D1 {
    uint public x;
        function z() public {
        x = 3;
        x = (x * 3) + 1;
        x = x + 11;
        x = x * 2;
    }
}
contract A is D {
    constructor() public D() {}
    function set(uint x) public {
        this.x = x;
    }
}
contract B is D {
    constructor() public D() {}
    function set(uint y) external {
        this.y = y;
    }
}
contract C is D {
    uint public z;
        function z() public {
        z = 3;
        z = z + 1;
        z = 0;
    }
}
contract Contract3 {
    function foo() public {
        set(11);
        z = 0;
        D1(address(this)).set(11);
        z = z*2;
        z = z*4;
    }
}
contract X {
    uint public a;
        function x() public {
            x.b = 11;
            D(address(this)).set(11);
            x = 1 + x;
        }
}
contract F {
    uint public a;

    constructor() public {
        a = 55;
    }

    function foo() public {
        a = a + 1;
        a = a * 5;
        x.a = x.a + a;
    }
}
