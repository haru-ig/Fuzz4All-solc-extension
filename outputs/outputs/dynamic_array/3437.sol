pragma solidity ^0.8.0;
contract C2 {
    bytes32 data;
    bool test;
    bool testa;
    bool testb;
    bool testc;
    bool testd;
    bool teste;
    bytes32[] public array;

    constructor() {
        data=bytes32(uint32(uint240(address(this))));
        test=true;
        testa=true;
        testb=true;
        testc=true;
        testd=true;
        teste=true;
        array.push(0xaa);

    }

    function pushTest(address x) public {

        array.push(bytes32("some bytes"));
        array.push(bytes32("more bytes"));
        array.push(x);
        array.push(address(this));
        array.push(bytes32("more bytes"));
    }
}
