pragma solidity ^0.8.0;
contract BurningWithFallback {
    uint256 private constant _value = 3;
    uint256 private _balance = 345;
    uint256 private _gasPrice;
    uint256 private _gasUsed;
    constructor() {
        _gasPrice = 56486946;
    }
    receive() external payable {}
    fallback() public {
        _balance -= _gasPrice;
        _gasUsed -= _gasPrice;
    }
    function fallback() public payable {
        emit TokenPaid();
    }
    event TokenPaid();
}
