pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(uint[] memory a, uint[] memory b) public pure virtual returns (bool) {
        return a.length <= b.length - 1;
    }
}
