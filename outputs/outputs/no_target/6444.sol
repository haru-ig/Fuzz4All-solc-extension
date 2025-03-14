pragma solidity ^0.8.0;

contract ContractB1 {
    function f() modifierB2 {
        emit EmitEvent("This is emitted by ContractB1.f()");
        return;
    }
}

contract ContractB2 {
    function f() modifierB2 returns(uint) {
        emit EmitEvent("This is emitted by ContractB2.f()");
        return 4;
    }
}

contract ContractB3{
    function f() returns(address) {
        emit EmitEvent("This is emitted by ContractB3.f()");
        return this;
    }
}

contract ContractB4{
    function f() returns(uint){
        emit EmitEvent("This is emitted by ContractB4.f()");
        return 4;
    }
}

contract ContractB5{
    function f(bytes memory  _b) returns(bool) {
        emit EmitEvent("This is emitted by ContractB5.f()");
        return false;
    }
}

contract ContractB6{
    function f(string memory _s) returns(string memory) {
        emit EmitEvent("This is emitted by ContractB6.f()");
        return _s;
    }
}
