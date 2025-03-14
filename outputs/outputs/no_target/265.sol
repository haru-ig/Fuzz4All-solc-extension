pragma solidity ^0.8.0;
contract mutated {
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous += 10;
        uint _ret = _previous;
        _previous = 0;
        return _ret;
    }
}
contract owner {
modifier onlyOwner { assert(msg.sender == owner()); _; }
}
contract A {
    function f() constant returns (uint) { return 1;}
}
contract B is A {
    function f() constant override returns (uint) { return __immutable__();}
    function __immutable__() private returns (uint) {return __immutable__();}
    function __immutable__() private returns (uint) {return __immutable__();}
}
contract C is A {
    function f() constant returns (uint) { return 1; }
}
contract D is C {
    function _immutable() internal returns (uint) {return _;}
}
contract E is B {
    function f() constant override returns (uint) {
        return __immutable__();
    }
    function _immutable() internal returns (uint) {
        return __immutable__();
    }
    function f_()private returns (uint){ return _;}
    function _immutable_()private returns (uint){ return ___;}
    function _(){
        return;
    }
}
contract EtoB2 is B {
    using owner for contract owner;
    function f_()private returns (uint){ return ___;}
    function _immutable_()private returns (uint){ return _;}
    function _immutable() internal {
    }
}
contract EtoC2 is C {
    using owner for contract owner;
    function _immutable_() private returns (uint){ return _;}
    function _immutable_() private returns (uint){ return _;}
    function _immutable() internal {
    }
}
contract EtoB1 is B {
    using owner for contract owner;
    function f() constant override returns (uint) {
        return _immutable__();
    }
    function _immutable() internal {
    }
    function _immutable_() private returns (uint) {
        return _immutable__();
    }
}
contract Isolates2 is B {
    using owner for contract owner;
    function f_()private returns (uint){ return _immutable__();}
    function _immutable() internal {
        if ((b > 1) &&  (c == _immutable_())) throw;
    }
    function _immutable_() private returns (uint){ return _; }
}
contract Capped is B{
    using owner for contract owner;
    modifier onlyIfEnough(uint amount) { assert(owner.balance() >= amount);
        _;
    }
    modifier onlyIfEnough2(uint amount) { assert(msg.sender.balance >= amount);
        _;
    }
}
contract Capped2 is B{
    using owner  for contract owner;
    modifier onlyIfEnough(uint amount) { assert
