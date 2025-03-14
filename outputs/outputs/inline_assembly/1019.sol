pragma solidity ^0.8.0;
contract MyFunction {
uint storage x;
uint constant public SOME_CONST = 2323232323;
uint y;
uint constant public anotherConstant = 23232323232323232323;
mapping(uint => address) private testMapping;
constructor(uint arg) {
    x = arg;
    y = SOME_CONST;


    testMapping[SOME_CONST] = this;
}

function f() public view returns(address) {
    return testMapping[SOME_CONST];
    {
        (address storage x) = testMapping[ARG];
    }
    return SOME_CONST;
    uint32(this);
    testMapping[ARG];
    address y2 = testMapping[SOME_CONST];
}
}
