pragma solidity ^0.8.0;
contract M {
    uint constant value = 5;
    uint  counter;
    fallback() external {
       counter < 1000? counter += value : counter --
    }
}
