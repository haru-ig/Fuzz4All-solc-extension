pragma solidity ^0.8.0;
contract MutatingReturnsArraysMutated {
    constructor(uint256[] memory values) public {
        uint256 length = values.length;
        address self = address(this);
        uint256 i;
        for (i = 0; i < length; i += 1)
            self.transfer(values[i]);
    }
}
