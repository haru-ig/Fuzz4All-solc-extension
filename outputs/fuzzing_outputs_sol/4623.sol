pragma solidity ^0.8.0;
contract ComplexMutated2 {
    constructor() {
        c = false;
    }
    function shouldBeFalse() public view {
        assert(c);
    }
    bool public c = false;
}

pragma solidity ^0.8.0;
contract Contract {
    modifier Test {
        require(c);
        _;
    }
    ComplexMutated private readonly c;
    constructor() {
        c = new ComplexMutated();
    }
    function shouldBeFalseTest() public view Test {
        assert(c.c);
    }
    function shouldBeTrueTest() public view Test {
        c.c = true;
        assert(c.c);
    }
}

pragma solidity ^0.8.0;
contract Contract2 {
    ComplexMutated2 private c;
    constructor() {
        c = new ComplexMutated2();
    }
    function shouldBeFalseTest() public view {
        assert(c.c);
    }
    function shouldBeTrueTest() public view {
        c.c = true;
        assert(c.c);
    }
}
contract Fallback {
    constructor() {}
    receive() external payable {}
}
contract Test {
    Fallback private fallback;
    constructor() {
        fallback = new Fallback();
    }
    function shouldBeFalseTest(Contract instance) public view Test {
        instance.Test{value: msg.value}(C());
    }
}
contract Test2 {
    constructor() {
        callCall(new Fallback());
    }
    function callCall(Contract instance) public {
        instance.Test{value: msg.value}(C());
    }
}
contract C {
    function() external {
        bool flag = true;
        C.fallback{value: msg.value}(flag);
    }
}
