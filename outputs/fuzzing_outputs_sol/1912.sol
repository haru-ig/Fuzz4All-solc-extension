pragma solidity ^0.8.0;
contract BurningWithFallbackFallback {
    uint256 public _gasPrice;
    constructor(uint256 _gasPrice) {
        _gasPrice = _gasPrice;
    }
    receive() external payable  {
        _gasPrice += 3;
    }
    fallback () external {
        _gasPrice -= 1;
    }
    function fallback() public payable {
        emit TokenPaid();
    }
    event TokenPaid();
}
