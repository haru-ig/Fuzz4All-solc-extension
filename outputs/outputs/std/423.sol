pragma solidity ^0.8.0;
contract A {
    uint8 constant public test = 17;
}
contract B is A {
    uint8 constant public test = 17;
}
contract C is B {
    uint8 constant public test = 17;
}
