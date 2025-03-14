pragma solidity ^0.8.0;
contract modified {
    address public owner;
    uint256 public constant M = 150000000000000000000;
    uint256 public constant M1 = 150000000000000000000;
    uint256 public constant N = 15000000000000000000000;
    uint256 public constant N1 = 150000000000000000000;
    uint256 public constant B = 333;
    uint256 public constant B1 = 332;
    uint256 public constant C = 331;
    uint256 public constant C1 = 330;
    uint256 public constant D = 329;
    uint256 public constant D1 = 328;
    uint256 public constant C8 = 177;
    uint256 public constant C16 = 83;
    uint256 public constant D8 = 64;
    uint256 public constant D16 = 32;

    function check_overflow_return () {
        revert("Invalid");
    }

    function check_overflow () {
        M = M + 1;
        M = M + 1;
        M = M + 1;
        M = M1 + 1;
        M = M + 1;
        M = M - 1;
        M = M * 2;
        M = C1 * 2;
        M = 2 * N1;
        M = N1 + N
