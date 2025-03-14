pragma solidity ^0.8.0;
contract A {
    uint alphabet;
    function change(uint p) public {
    }
    function foo1() returns (uint) {
        uint x = check();
        if (x == alphabet) {
            revert("Function is broken");
        }
        return x;
    }
    function foo2() returns (uint) {
        uint x = check();
        if (x == alphabet) {
            revert("Function is broken");
        }
        return x;
    }
    function foo3() returns (uint) {
        uint x = check();
        if (x == alphabet) {
            revert("Function is broken");
        }
        return x;
    }
    function check() public returns (uint){
        uint x = foo1();
        return x;
    }
}
