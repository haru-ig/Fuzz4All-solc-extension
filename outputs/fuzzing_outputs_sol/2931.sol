pragma solidity ^0.8.0;
contract ContractWithFallback3 {
    uint256 public data;
    constructor () public {
        uint256 x = 1;
        x = 1;
    }
    function fallback () external payable {
        uint256 x = 2;
        x = 2;
        emit Fallback(msg.value);
    }
    function fallbackData() public view returns (uint256) {
        data = 15;
        return data;
    }
    event Fallback(uint256 input);
}
