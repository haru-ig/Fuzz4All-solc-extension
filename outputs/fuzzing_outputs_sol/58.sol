pragma solidity ^0.8.0;
contract FallbackFunction {
    fallback() public payable {}
}
contract InitialCaller {
    fallback() external payable {}
}
contract SecondCaller {
    fallback() external payable {}
}
