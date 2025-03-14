pragma solidity ^0.8.0;
contract Mutant7Mutator {






    (bool success, bytes memory data) timedFallback(address target, uint256 amount);
    function timedFallbackMutant() public {
        uint8 value = 0;
        (value, ) = timedFallback(owner(), value);
        require(value == 1, "The program shouldn't be executed if no gas was used.");
    }
    function timedFallbackMutant_WrongGas() public {
        uint8 value = 0;
        (value, ) = timedFallback(owner(), value);
        require(value == 1, "The program shouldn't be executed if no gas was used.");
    }
}










/* Address of Mutant18Mutator is 0xA6b1a4F5B29E70753f83c6918D51a6ef0CE03393
