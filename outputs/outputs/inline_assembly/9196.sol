pragma solidity ^0.8.0;
contract C {
    function set(uint u) public {}
}
pragma solidity ^0.8.0;
contract B {
    function fun(uint) public view {}
}
contract D is A, B {
    C c;
    function fun(uint) public view {
        c.set(1000);
    }
}<fim_middle>contract E is A, B {
    uint constant _uint32 = 16**60;
    function set(uint i) public {
        c.set(_uint32);
    }
}

pragma solidity ^0.8.0;


contract B {
    function fun(uint) public view {}
}
contract D is A, B {
    C c;
    function fun(uint) public view {
        c.set(1000);
    }
}
contract E is A, B {
    uint constant _uint32 = 16**60;
    function set(uint i) public {
        c.set(_uint32);
    }
}
