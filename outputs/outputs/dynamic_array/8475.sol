pragma solidity ^0.8.0;
contract mutantSolidityNullPointerException {
    function mutant_nullPoint() view internal returns (uint) {
        return null;
    }
    function mutant_nullPoint2() view internal returns (string memory) {
        return null;
    }
    function mutant_nullPoint3() view internal returns (int8) {
        return -1;
    }
    function mutant_nullPoint4() view internal returns (uint16) {
        return 65536;
    }
    function mutant_nullPoint5() view internal returns (uint64) {
        return 18446744073709551615;
    }
    function mutant_nullPoint6() view internal returns (int64) {
        return -9223372036854775807;
    }
    function mutant_nullPoint7() view internal returns (address) {
        return 0x00;
    }
    function mutant_nullPoint8() view internal returns (bytes memory) {
        return "Hello World".bytes;
    }
    function mutant_nullPoint9() view internal doesNotReturn() returns (address payable) {
        return payable(address(0x00));
    }
    function nonPublicReturn() view internal returns (uint) { return 0x00; }
}
 /* Below are examples to test the previous contract using the test-and-verify command that is included with the Solidity compiler.
     Check the following before you run it with solidity test-and-verify. You should check all your sources have
     Solidity-formatted syntax and you can test with:
     - The Solid
