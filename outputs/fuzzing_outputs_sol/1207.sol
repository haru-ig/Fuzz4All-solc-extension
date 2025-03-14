pragma solidity ^0.8.0;
contract SemanticsEquivalence9 {
    uint private constant xValue = 0x12341234;
    enum Color { red, green, blue }

    uint x;
    Color color;
    struct A { uint aValue; }
    event EventA(A x);

    constructor(uint aValue) {
        x = aValue + 5;
    }
    function run() public {
        emit EventA(A(x));
        emit EventA(A(x));
        color = Color.red;
    }
    function otherFunction() public pure {
        if (true)
            address(this).transfer(3);
    }
}
