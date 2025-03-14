pragma solidity ^0.8.0;
contract MutatingCalldataArraysWithReentrancyProtection {
    uint256[] private _uint256WithNullPointer;
    mapping(uint256 => uint256) private _uint256ArraysWithNullPointerForReason;
    function _beforeCall(address _wallet) internal {
        require(_wallet!= address(0));
    }
    function _beforeFallback() internal {
    }
    function _before() internal {
    }
    function _after() internal {
        SetUint256WithNullPointer(uint256WithNullPointer);
    }
    function _afterCall(bool result) internal {
        require(result);
    }
    event Mutation();
    event SetUint256WithNullPointer(uint256 _uint256WithNullPointer);
    event SetUint256ArraysWithNullPointerForReason(uint256[] _uint256ArraysWithNullPointer);
    function foo() public returns(uint256) {
        return 1;
    }
}
