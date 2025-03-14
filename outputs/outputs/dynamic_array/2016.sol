pragma solidity ^0.8.0;
contract FunctionalEquivalence_FunctionCallToSetInStorage {
    function set(uint256 _arrSize) public {
        address payable addr = payable(msg.sender);
        uint256[] storage arr = addr.storage();
        set(arr, 0, 0);
    }
    function set(uint256[] memory, uint256, uint256) internal {
    }
}
