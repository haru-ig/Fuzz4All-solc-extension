pragma solidity ^0.8.0;
contract ComplexMutation {
    function complexMutation() public {
        emit Complex(0);
        emit Complex(1);
        emit Complex(2);
    }
    event Complex(uint a);
    fallback() external payable {}
}
