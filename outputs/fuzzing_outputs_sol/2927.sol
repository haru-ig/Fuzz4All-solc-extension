pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint256 pubData;
    constructor () public {
        uint256 x = 1;
        x = 1;
    }
    fallback external {
        emit Fallback();
    }
    function fallbackData() public view returns (uint256) {
        return pubData;
    }
    event Fallback();
}
