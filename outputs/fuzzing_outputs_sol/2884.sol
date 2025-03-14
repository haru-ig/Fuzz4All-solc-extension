pragma solidity ^0.8.0;
contract Caller {
    interface I {
        function callFallback(uint256 x) external;
    }

    function callFallback(uint256 x) public {
        I(address(this)).callFallback(x);
    }
}
