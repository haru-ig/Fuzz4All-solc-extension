pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample4 {
    uint256 i;
    constructor(uint256 i_) {
        i = i_;
    }
    function main() public pure {
        uint256[] memory values;
        values[i] += i;
    }
}
