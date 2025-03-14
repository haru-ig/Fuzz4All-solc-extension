pragma solidity ^0.8.0;
contract Fallback {
    receive () payable external {}
    function f() public {
        emit CallerFallback();
    }
    event CallerFallback();
}
pragma solidity ^0.8.0;
contract FallbackInterface {
    fallback() external payable {}
    receive() external pure {}
    external pure returns (bytes4);
}
