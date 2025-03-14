pragma solidity ^0.8.0;
contract EmptyFallback2 {
    function fallback() calldata { }
}
contract ReturnValue {
    function returnValue() payable public pure returns (uint) {
        return 1;
    }
}
contract ReturnValue1 {
    function returnValue1() external payable returns (uint) {
        return 1;
    }
}
contract ReturnValue2 {
    function returnValue2() public payable pure returns (uint) {
        return 1;
    }
}
