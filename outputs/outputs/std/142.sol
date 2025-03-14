pragma solidity ^0.8.0;
contract MintingProgram {
    function mintIfBigger(uint value, uint total) external view returns (uint) {
        require(value > total);
        return value.sub(total);
    }
}
