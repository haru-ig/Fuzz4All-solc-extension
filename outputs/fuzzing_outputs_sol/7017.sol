pragma solidity ^0.8.0;
contract Caller {
    uint8 constant MAX_STORAGE_LENGTH = 256;

    function GetAddress() public returns (address) {
        return address(this);
    }
}

pragma solidity ^0.8.0;
contract ContractWithFallback {
    fallback() external {
    }
    receive() external payable {}
}


pragma solidity ^0.8.0;
interface FallbackResolver {
    function resolveFallback() internal returns (address);
}
