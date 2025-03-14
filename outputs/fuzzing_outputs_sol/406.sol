pragma solidity ^0.8.0;
contract SafelyCaller {
    receive () external pure {}
    fallback() external pure {}
}
