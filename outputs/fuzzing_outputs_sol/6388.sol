pragma solidity ^0.8.0;
contract Mutant1FallbackFunction3 {
    function mutantSetFallbackFunction() public {
        address zero = 0x08000000000000000000000000000000000000000;
        uint immutable test = 42;
        uint immutable test2 = 0;
        uint immutable test3 = 1;

        (bool result, ) = zero.delegatecall(bytes(address(0).delegatecall(bytes(address(this).delegatecall(bytes(address(this).delegatecall(bytes(address(this).delegatecall(bytes(address(this).delegatecall(bytes(bytes(address(this).delegatecall(bytes('1100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000248e7c00e8fa7a18a168861f935420000000000000000);
        ) == 42 && (uint(result) == 2) && (uint(test) == 42) && (uint(test2) == 0) && (uint(test3) == 1) && (test == 42));
    }
}
