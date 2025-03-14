pragma solidity ^0.8.0;
contract ReceiveWithFallback {
    receive() external payable {}

    function _fallback(
        uint256 nothing
    ) internal pure { }
}

pragma solidity ^0.8.0;
contract ReceiveWithFallbackWithReceive {
    receive() external payable {}

    function _fallback(
        uint256 nothing
    ) internal pure { }
}
