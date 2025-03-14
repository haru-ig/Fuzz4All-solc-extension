pragma solidity ^0.8.0;
contract SafelyCaller2 {
    receive () external view payable {}
    fallback() external payable {}
}
