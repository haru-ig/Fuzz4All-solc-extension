pragma solidity ^0.8.0;
contract C{
    bytes32 constant s = keccak256("hello");
    constructor () public{
        f();
    }
    function f() public{
        assert(s <= s);
    }
}

pragma solidity ^0.8.0;
contract D{
    bytes32 constant s = keccak256("hello");
    bytes32 c = "hello";
    address b = address(this);
    constructor (address a) public{
        b = a;
        f();
    }
    function f() public{
        assert(s <= s);
    }
}


pragma solidity ^0.8.0;
contract Test {
    constructor (uint _a) public {
        assert(_a > 0);
    }
}
contract TestInterface{
    function test(uint a) public returns (uint b) {}
}

pragma solidity 0.8.0;
contract Test {
    constructor (uint _a) public {
        assert(_a > 0);
    }
}
contract TestInterface{
    function test(uint a) public returns (uint b) {}
}

pragma solidity ^0.8.0;
contract Test{
    address a;
    constructor () {
        a = address(this);
    }
}
