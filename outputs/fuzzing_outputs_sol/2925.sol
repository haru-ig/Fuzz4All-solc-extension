pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint256 pubData;
    constructor () public {
        uint256 x = 1;
        x = 1;
    }
    fallback payable {}
    function fallbackData() public view returns (uint256) {
        return pubData;
    }
    function fallbackData2() payable external {
        uint256 x = 1;
        x = 2;
    }
    event Fallback(uint256 input);
}
