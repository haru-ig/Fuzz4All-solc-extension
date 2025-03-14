pragma solidity ^0.8.0;
contract SemanticallyEquivalentM12 {
    constructor () public {}
    function emitLog() public {}
    event Log();
}
contract SemanticallyEquivalentM21 {
    constructor () public {}
    function emitLog(bool value) public {}
    event Log(bool value);
}
contract SemanticallyEquivalentM22 {
    constructor () public {}
    function emitLog(uint160 value) public {}
    event Log(uint160 value);
}
contract SemanticallyEquivalentM31 {
    constructor () public {}
    function emitLog(contract A) public {}
    event Log(contract A);
}
contract SemanticallyEquivalentM32 {
    constructor () public {}
    function emitLog(contract A) public {}
    event Log(contract A);
}
contract SemanticallyEquivalentM41 {
    constructor () public {}
    function emitLog(contract A, address b) public {}
    event Log(contract A, address b);
}
contract SemanticallyEquivalentM42 {
    constructor () public {}
    function emitLog(contract A, address b) public {}
    event Log(contract A, address b);
}
contract SemanticallyEquivalentM51 {
    constructor () public {}
    function emitLog(contract A, address b, contract C) public {}
    event Log(contract A, address b, contract C);
}
contract SemanticallyEquivalentM52 {
    constructor () public {}
    function emitLog(contract A, address b, contract C) public {}
    event Log(contract A, address b, contract C);
}
contract SemanticallyEquivalentM61 {
    constructor () public {}
    function emitLog(contract A, address b, address c, contract D) public {}
    event Log(contract A, address b, address c, contract D);
}
contract SemanticallyEquivalentM62 {
    constructor () public {}
    function emitLog(contract A, address b, address c, contract D) public {}
    event Log(contract A, address b, address c, contract D);
}
contract SemanticallyEquivalentM71 {
    constructor () public {}
    function emitLog(contract A, address b, address c, address d) public {}
    event Log(contract A, address b, address c, address d);
}
contract SemanticallyEquivalentM72 {
    constructor () public {}
    function emitLog(contract A, address b, address c, address d) public {}
    event Log(contract A, address b, address c, address d);
}
contract SemanticallyEquivalentM81 {
    constructor () public {}
    function emitLog(contract A, address b, address c, uint8 d, uint8 e) public {}
    event Log(contract A, address b, address c, uint8 d, uint8 e);
}
contract SemanticallyEquivalentM8
