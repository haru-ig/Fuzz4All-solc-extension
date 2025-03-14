pragma solidity ^0.8.0;
contract C2 {
    uint128 a;
    fallback() external payable {
        a += 1;
    }
}
pragma solidity >= 0.6.6;
