pragma solidity ^0.8.0;
contract I {
    function f() public;
    function g() public {}
}

pragma solidity ^0.8.0;
contract I {
    uint32 a;
    constructor (uint56 b) public {
        a = b + 1;
    }
    function add(uint56 _b) public {
        a = a + _b;
    }
    function f() public pure {
        a = a + 1;
        uint32 b = a + 10;
    }
}

pragma solidity ^0.8.0;
contract I {
    address payable a;
    uint32 b;
    constructor () public {
        a.call.value(1)();
    }

    function f() public pure {
        (uint32 y, ) = I.a.call(I(I.a).f());
    }
}

pragma solidity ^0.8.0;
contract I {
    address payable a;
    uint32 b;

    constructor (address payable _a) public {
        a = _a;
    }

    function f() public pure returns (uint32 y, uint32) {
        (uint32 x, ) = (I.a.call.value(uint(1))());
        return (x, I.a.call.value(uint(2))[0x123456].b());
    }
}

pragma solidity ^0.8.0;
contract I {
    address payable a;
    uint32 b;
    constructor () public {
        a.call.value(1)();
    }
    modifier onlyA() {
        require(a == msg.sender, "only a permitted sender");
        _;
    }
    function f() public pure onlyA pure {
        (uint32 z,, ) = (I.a.call.value(uint(1))());
    }
    function g() public {
        require(msg.sender == I.a.call.value(100)(););
    }
}
