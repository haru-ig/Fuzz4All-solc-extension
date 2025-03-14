pragma solidity ^0.8.0;
contract A2 is modifierB2{
    function f() public {
        if(false) revert("bad");
    }
}

pragma solidity ^0.8.0;
contract B2 {
    function f() public view {
        if(false) f();
    }
}
