pragma solidity ^0.8.0;



function myAddressReturning(uint x) internal pure returns (address payable) {
    return payable(x);
}

**@dev** In order to compile a contract with Inline Assembly the compiler must be run with the flag -fasm-verbose and the output must be piped to the same file in order to emit an assembly file.
*/
