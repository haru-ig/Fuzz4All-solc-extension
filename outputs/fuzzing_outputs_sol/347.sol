pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2_5 {
    address payable payableFallback;
    address payable receives(address payable _to, uint _value) public { emit Emitted(0); }
    function getFallback() public view returns (address payable) { return payableFallback; }
    function setFallback(address payable _fallback) public { payableFallback = _fallback; }
}

pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2_6 {
    uint payableFallback;
    uint receives(uint _value) public { emit Emitted(0); }
    function getFallback() public view returns (uint payable) { return payableFallback; }
    function setFallback(uint _fallback) public { payableFallback = _fallback; }
}
