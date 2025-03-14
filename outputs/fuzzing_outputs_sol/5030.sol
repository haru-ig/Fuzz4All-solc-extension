pragma solidity ^0.8.0;
contract Fallback {
    function mutate() public pure {
        return new Caller().mutate();
    }
}
contract Caller {
    function mutate() public payable returns (uint256 amount) {
        if(_fallbackFunction()) {
            revert("Fallback failed with revert exception");
        }
        amount = msg.value;
        return amount;
    }

    function _fallbackFunction() private pure returns (bool) {
        return fallbackFunction();
    }

    function fallbackFunction() public pure returns (bool success) {
        success = msg.data.length!= 0;
        bytes memory data = abi.decode(msg.data, (bytes));
        bool isFallback;
        assembly {
            isFallback := calldatacopy(0, add(data, 0x20), 1024)
        }
        return isFallback;
    }
}
