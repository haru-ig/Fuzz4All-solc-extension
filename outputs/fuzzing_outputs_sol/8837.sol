pragma solidity ^0.8.0;
contract FallbackTest {
    uint counter;
    fallback() public payable returns (uint) {
        counter += 1;
        return 0;
    }
}
