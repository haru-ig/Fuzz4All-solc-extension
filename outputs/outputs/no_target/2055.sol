pragma solidity ^0.8.0;
contract ModificationTest {
    uint256 public a;
    string public b;
    constructor(
            string memory _b
    ) public {
        b = _b;
    }
}
