pragma solidity ^0.8.0;
contract Fallback {
    struct FallbackData {
        uint v;
        bytes32 r;
        bytes32 s;
    }

    function _fallback(FallbackData calldata data) internal {
        require(msg.sender == address(data.to));
        fallbackWithSig(data);
    }

    fallback() external {
    }

    function fallbackWithSig(FallbackData memory data) public {
    }
}




pragma solidity ^0.8.0;
contract FallbackTester {
    bytes4 private constant _fallbackSelector = 0x095ea7b3;
    function _fallbackTest(bytes memory data) public pure returns (bool) {
        return _fallbackSelector == abi.decode(data, (bytes4));
    }

    fallback() external pure override returns (bytes4) {
        return _fallbackSelector;
    }

    constructor() {
    }
}
