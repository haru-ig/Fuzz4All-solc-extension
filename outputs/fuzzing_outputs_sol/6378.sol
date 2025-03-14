pragma solidity ^0.8.0;
contract Mutant0 {
    function mutantSetFallbackFunction() public pure returns (uint) {
        return 2 ** 20;
    }
}
contract Mutant0Changes {
    function mutantSetFallbackFunction1() public pure returns (uint) {
        return 2 ** 20;
    }
    function mutantSetFallbackFunction2() public pure returns (uint) {
        return 2 ** 21;
    }
}
assembly {
    address private contract;
    function setFallbackFunction() public {
        contract := 0x010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101016273b31573d67000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
    }
}
