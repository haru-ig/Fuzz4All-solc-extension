pragma solidity ^0.8.0;
receive() external payable {}

pragma solidity ^0.8.0;
fallback() external payable {}
contract ComplexFallback {
    function method1() public fallback { revert("ComplexFallback not called"); }
}
