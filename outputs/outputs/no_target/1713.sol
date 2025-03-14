pragma solidity ^0.8.0;
contract Mutate0015a {
    uint256 input;
    constructor() { input = 2; }
    modifier m(uint256 i) {
        input = input + i;
        _;
    }
    function callMe() m(2) public {
        assert(false);
    }
}


pragma solidity ^0.8.0;
contract Mutate14a {
    function multiply() public pure returns (uint) {
        if (true) {
            return 0;
        } else {
            return uint(1);
        }
    }
}


pragma solidity ^0.8.0;
