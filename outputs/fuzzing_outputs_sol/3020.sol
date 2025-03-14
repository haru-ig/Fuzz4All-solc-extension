pragma solidity ^0.8.0;
interface FakeCaller {
    fallback function fallback() public payable;
}
