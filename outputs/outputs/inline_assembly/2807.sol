pragma solidity ^0.8.0;
contract A {
    function foo(uint p) public {}
    function change(B p) public {
        B storage b = p;
        b.change(0x1);
    }
}

pragma solidity ^0.8.0;
contract B {
    function change(address payable pay) public {
        uint x = pay;
    }
}

B(0xf2b51d651e26d617a6430205637fa27b1b72f642);

A(0xf2b51d651e26d617a6430205637fa27b1b72f643).change(B(0xf2b51d651e26d617a6430205637fa27b1b72f642));
