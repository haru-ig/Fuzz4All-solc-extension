pragma solidity ^0.8.0;
contract C {
    uint public x;
    function f() virtual public pure returns(uint) {
        return ++x;
    }
}

contract D {
    uint public x;
    function f() virtual public pure returns(uint) {
        return ++x;
    }
}

contract Caller {
    uint public x;
    uint result;

    function callC() public pure {
        result = (new C()).f();
    }
    function callD() public pure {
        result = (new D()).f();
    }
    function callMixed() public pure {
        result = (new C()).f() + 5 * (new D()).f();
    }
}
