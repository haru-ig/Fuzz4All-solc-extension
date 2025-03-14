pragma solidity ^0.8.0;
contract D {

    event NewIndex(uint16[40]);

    uint16[40]  a;
    constructor(uint16 b) {}
    function f() public {
        a[randomIndex(a)];
        NewIndex(a);
    }
    function randomIndex(uint16[40] memory b) public pure returns (uint16 pos) {
        pos = uint16((uint8(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(0x535053505350));

    0x53505350535053505350535053505350;
    */

    pragma solidity ^0.8.0;
contract D {

    struct S {
        uint i: 0;
        uint j: 128;
        uint64 z: 255;
    }

    function f() public {}
}

    pragma solidity ^0.8.0;
contract D {

    interface I {
        function f() external pure returns (uint);
    }

    function f() public returns (uint)
        { return I(address(this)).f(); }
}

    pragma solidity ^0.8.0;
contract D {

    struct A {
        uint a[];
    }
    function f() public view returns (uint[] memory)
    { return A(address(this)).a; }
    int[40] i = [-1, -2, 0, 1, 2,
