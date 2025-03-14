pragma solidity ^0.8.0;
contract NewSemanticsFallbackPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external payable { oldValue = value; }
    fallback() external { value += msg.value; }
}

pragma solidity ^0.8.0;
contract NewSemanticsFallbackReceiving {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external payable { value += msg.value; }
    fallback() external payable {
        value += msg.value;
    }
}
