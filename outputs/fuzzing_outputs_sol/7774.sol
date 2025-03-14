pragma solidity ^0.8.0;
contract OldSemanticsFallbackPayable {
    uint256 internal value;
    function set(uint256 _value) public { value = _value; }
    fallback() external { set(value); }
}
contract NewSemanticsFallbackPayable {
    uint256 public value;
    fallback() external payable { set(msg.value); }
}
