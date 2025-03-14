pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(bytes32 input, uint max, uint min) public pure virtual returns (uint) {
        require(input <= max && input >= min);
        uint sumValue = max;
        while (sumValue > 0 && sumValue < input) {
            sumValue >>= 1;
        }
        return sumValue;
    }
}
