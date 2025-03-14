pragma solidity ^0.8.0;

contract PayableFallback {
    address payable public addressE;

    fallback(address payable _a, bytes memory _b) external {
        addressE = _a;
        emit fallback(_b);
    }

    function calldataFallback() public pure {
        addressE.call{value: 42}(new bytes(0));
    }

    receive() external pure {}
}
