pragma solidity ^0.8.0;
contract Basic {
    function Fallback() public payable {}
}
contract Caller is Basic {

    function Mut(uint a) public payable {

        emit MutLog(a);
    }
    event MutLog(uint a);
}
contract Sigh {
    function f(Basic s) public {
        s.Mut(42);
    }
}

contract FallbackMutator2{
    constructor() public {
        assert(fallback(0)==false);
    }

    function fallback(uint _size) public view returns (bool){
        return true;
    }
    function Mut1(uint a) public payable {
        require(a % 90 == 0, "a is not divisible by 42");
        emit MutLog(a);
    }
    event MutLog(uint a);
}

contract Caller2 is Basic {

    function Mut(uint a) public payable {
        require(a % 70 > 0, "a is not a mut");
        emit MutLog(a);
    }
    event MutLog(uint a);
}

contract Sigh1 {
    function f(Basic s) public {
        s.Mut(42);
    }
}

contract FallbackMutator3{
    constructor() public {
        assert(fallback(0)==false);
    }

    function fallback(uint _size) public view returns (bool){
        return true;
    }
    function Mut1(uint a) public payable {
        require(a % 90 == 0, "a is not divisible by 42");
        emit MutLog(a);
    }
    event MutLog(uint a);
}
contract Caller3 is Basic {

    function Mut(uint a) public payable {
        require(a % 70 > 0, "a is not a mut");
        emit MutLog(a);
    }
    event MutLog(uint a);
}
contract Sigh2 {
    function s(Basic b) public {
        b.Mut(42);
    }
}

contract FallbackMutator4{
    constructor() public {
        assert(fallback(0)==false);
    }

    function fallback(uint _size) public view returns (bool){
        return true;
    }
    function Mut1(uint a) public payable {
        require(a %
