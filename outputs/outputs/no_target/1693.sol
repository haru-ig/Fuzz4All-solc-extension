pragma solidity ^0.8.0;
contract Mutate0000 {
    uint256 input;
    Modifier m() {
        input = input & (input - 1);
        _;
    }
}

pragma solidity ^0.8.0;
contract Mutate0015b {
    uint256 input;
    modifier m() {
        input = input >> (input + 1);
        _;
    }
}
