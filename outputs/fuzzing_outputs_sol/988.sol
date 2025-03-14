pragma solidity ^0.8.0;
contract ReceiveWithFallback {
    receive() external payable {}
    function _fallback(
        uint256 nothing
    ) internal pure { }
    function () {



    }
    function _fallback(
        uint256 value
    ) internal pure { }
}

pragma solidity ^0.8.0;
contract ReceiveWithFallback {
    receive() external pure {}
}
contract ReceiveWithFallbackWithReceive {
    receive() external pure {}
}

pragma solidity ^0.8.0;
contract ReceiveWithFallback {
    receive() external pure {}
}
contract ReceiveWithFallbackWithReceive {
    receive() external pure {}
}
