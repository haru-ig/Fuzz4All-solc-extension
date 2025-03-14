pragma solidity ^0.8.0;
contract BadCase10 {
    uint256[2] a;
}
pragma solidity ^0.6.0;
contract BadCase11 is BadCase9, BadCase10 {
    uint128[1] a;
}
