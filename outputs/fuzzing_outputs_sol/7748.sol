pragma solidity ^0.8.0;
contract FallbackMutatingNonPayable {
    function FallbackMutatingNonPayable(uint256 _value) internal { value = _value; }
    function set(uint256 _v) internal { value = _v; }
    fallback() external payable { newValue = value; }
}
