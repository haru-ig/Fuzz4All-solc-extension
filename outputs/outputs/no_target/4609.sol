pragma solidity ^0.8.0;
contract C{
    function f() public{
        B b = new B();
    }
}

pragma solidity ^0.8.0;
contract D{
    function f() public{
        C c = new C();
    }
}
