pragma solidity ^0.8.0;
contract Dollar {
    uint256 constant CURRENCY_IN_ETHER = 10**18;
    using MutatedFallbackModifier for MutatedFallbackModifier;
    address payable fallback_;
    constructor() { fallback_ = payable(_msgSender()); }
    function mint(address payable _to, uint256 _amount) public {
        fallback_.call{ value: _amount * CURRENCY_IN_ETHER }("");
        _mint(_to, _amount);
    }
    function _mint(address _to, uint256 _amount) internal {
        _to.mint(_amount);
    }
}
