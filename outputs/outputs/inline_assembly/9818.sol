pragma solidity ^0.8.0;
contract TestProgram {
    constructor () {
        SemanticallyEquivalentXulContract XUL = new SemanticallyEquivalentXulContract();
        XUL.b();
        XUL.c();
        XUL.b();
        XUL.c();
        XUL.b();
        XUL.c();
        XUL.b();
        XUL.c();
    }
}
