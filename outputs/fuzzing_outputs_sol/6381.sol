pragma solidity ^0.8.0;
contract Mutant2FallbackFunction1 {
    function mutantSetFallbackFunction() public pure returns (uint) payable {
        return 2 ** 20;
    }
}
contract Mutant2FallbackFunction2 {
    fallback function mutantSetFallbackFunction() public pure returns (uint) payable {
        return 2 ** 20;
    }
}
contract Mutant2FallbackFunction3 {
    function mutantSetFallbackFunction() public pure {
        return 2 ** 20;
    }
}
