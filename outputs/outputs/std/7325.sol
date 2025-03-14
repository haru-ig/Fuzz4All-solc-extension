pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MyContract {
    struct Array {
        uint256[3] a;
    }
    uint256[2][2] private x;
    uint256[2] private u;
    Array private a;
    Array private b;
    uint256 private b_min;
    uint256 private b_max;
    uint256 private n_1;
    uint256 private n_2;
    uint256 private n_3;
    uint256[2][2] private u_temp;
    uint256[2] private num_zeros_in_a;
    uint256[7] private num_zeros_in_b;
}
