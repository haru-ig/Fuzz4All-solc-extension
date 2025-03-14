pragma solidity ^0.8.0;
contract E {
    uint16[40]  a;
    D d;
    constructor(uint16 b) public {}
    function f() public {
        d;
    }
}

pragma solidity ^0.8.0;
contract F {
    uint16[40]  a;
    D d;
    constructor(uint16 b) public {}
    function f() public {
        d.f();
    }
}
contract G {
    uint16[40]  a;
    uint256 b;
    constructor(uint16 b) public {}
    function f() public {
        a;
        b;
    }
}
contract H {
    uint16[40]  a;
    uint256 b;
    constructor(uint16 b) public {}
    function f() public {
        a;
        a = a;
    }
}
contract ID {
}
contract I {
}
contract E1 {
    uint16[40]  a;
    constructor(uint16 b) public {}
    function f() public {
        bytes memory mem = hex"000000000000002097d0000000000000000000000000000000000000000000000";
        D d;
    a;
}
