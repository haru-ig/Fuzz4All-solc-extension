pragma solidity ^0.8.0;
contract Contract11Mut2{
    uint256 internal constant num = 1;
    fallback() public payable {
        num = num + 1;
    }
}
