pragma solidity ^0.8.0;
contract MyContract {
    event Log0();
    event Log1(string message);
    function f() public returns(bool, uint){
        (bool bl, uint a) = emit(Log2);
        if (bl!= true) emit(Log0);
        emit(Log1, "SomeString");
        if (a!= 0) emit(Log1, "SomethingElse");
        return (true, a);
    }
}
