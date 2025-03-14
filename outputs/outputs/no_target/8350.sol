pragma solidity ^0.8.0;
contract Checked {
    constructor() public {
        assert(false);
        unchecked {
        }
    }
}
