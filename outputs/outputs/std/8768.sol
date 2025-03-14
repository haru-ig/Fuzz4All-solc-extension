pragma solidity ^0.8.0;
interface Mutated48 {
}
interface Mutated64 {
}
interface Mutated128 {
}

pragma solidity ^0.8.0;
interface Printable {
    function toString() external pure returns(bytes memory);
}
interface Print32 {
    function toString() external pure returns(bytes32);
}
interface Print48 {
    function toString() external pure returns(bytes48);
}
interface Print64 {
    function toString() external pure returns(bytes64);
}
interface Print128 {
    function toString() external pure returns(bytes128);
}

pragma solidity ^0.8.0;
bytes memory s1 = bytes("string 1");
bytes memory s2 = bytes("string 2");
interface Printable1 {
    function toString() external pure returns(bytes memory);
}
interface Printable2 {
    function toString() external pure returns(bytes32);
}
interface Printable32 {
    function toString() external pure returns(bytes32);
}
interface Printable48 {
    function toString() external pure returns(bytes48);
}
interface Printable64 {
    function toString() external pure returns(bytes64);
}
interface Printable128 {
    function toString() external pure returns(bytes128);
}
interface Print32s1 implements Printable1, Print32 {
}
interface Print48s1 implements Printable1, Print48 {
}
interface Print64s1 implements Printable1, Print64 {
}
interface Print128s1 implements Printable1, Print128 {
}
address myAdr = address(0x6E05d79be3d2Ed20E989334AB039193E10a0364E);
Print32s1 s1Addr;
Print48s1 s1Addr;
Print64s1 s1Addr;
Print128s1 s1Addr;
Printable1 s1Addr;
constructor() {
    s1Addr = Print32s1(myAdr);
}
function test1() {
    memoryResult: bytes memory memoryResult;
    Printable1 printableResult;
    s1Addr.toString(memoryResult);
    Printable1 printableResult2;
    s1Addr.toString(printableResult2);
    Printable1 printableResult3;
    s1Addr.toString(printableResult3);
    Printable1 printableResult4;
    s1Addr.toString(printableResult4);
    Printable1 printableResult5;
    s1Addr.toString(printableResult5);
}
function call1() {
    (bytes memory, Printable1 s1) = Printable1.delegatecall(abi.encodeWithSignature("toString()"));
}
function get1() {
    bytes memory memoryResult;
    Printable1 printableResult;
    printableResult.
