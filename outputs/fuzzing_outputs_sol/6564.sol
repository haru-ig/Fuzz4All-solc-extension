pragma solidity ^0.8.0;
contract Caller {
    function call_lib(Lib.foo() calldata foo) public {}
mapping (address => Lib.foo()) public m_foo;
uint public b;

function use_lib(Lib.foo() calldata foo) public {
    m_foo[msg.sender] = foo;
    b = foo;
}

function() public payable {
    address a;
    Lib.foo() = Lib.foo();
    use_lib(Lib.foo() calldata foo);
    Lib.foo() = a;
}

function fallback() public {
    Lib.foo() = a;
}
}
