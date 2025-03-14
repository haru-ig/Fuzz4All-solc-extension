pragma solidity ^0.8.0;
contract Mutate0016a is Mutate0015b {
    uint256 input0 = 0;
    uint256 input1 = 0;
    function () external m { input1 = input1 + 1; }

    modifier m() {
        input0 = input0 + 1;
        input1 = 2 * input1;
        _;
    }
}
