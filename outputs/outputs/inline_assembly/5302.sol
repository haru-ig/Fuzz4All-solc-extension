pragma solidity ^0.8.0;
contract Q {

    uint256 constant F = 87;
    uint256 constant F2 = 47;
    uint256 constant F3 = 135;
    constructor(uint256 B, uint256 C) public {

        uint256 F = B;
    }
    function changeF(uint256 I) public {
        F2 = I;
    }
    function update() public {
        F = F2 + F + F3;
    }
}
