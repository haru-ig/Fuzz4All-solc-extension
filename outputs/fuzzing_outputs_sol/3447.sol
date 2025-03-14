pragma solidity ^0.8.0;
interface AddressHolder {
    function set() external;
}
contract AddressHolders {
    address public addressHolder;
    constructor() public {
        addressHolder = msg.sender;
    }
    function useSet() public {
        addressHolder.set();
    }
}

pragma solidity ^0.8.0;
contract Caller is AddressHolders {
    function callWithFallbackAndReturn() public pure returns (uint256 value) {
        (uint256 c) = address(0).call.value(0)();
        return c;
    }
}
