pragma solidity ^0.8.0;
assembly {
    contract Caller3 is Caller2 {
        receive() public payable {
        }
    }
    receive {}
    fallback () public payable {}
}
