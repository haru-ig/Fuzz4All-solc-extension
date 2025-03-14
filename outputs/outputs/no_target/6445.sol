pragma solidity ^0.8.0;
contract modifierB2{
    function f() public pure {
        if(false) f();
    }
}

pragma solidity >=0.6.3;

contract modifierB2{
    function f() public {
        if(false) f();
    }
}
