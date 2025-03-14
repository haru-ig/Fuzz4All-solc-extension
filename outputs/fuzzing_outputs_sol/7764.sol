pragma solidity ^0.8.0;
contract OldSemanticsFallbackMutating {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external returns (uint amount) {
        value += amount;
    }
}
contract NewSemanticsFallbackMutatingPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal {
        uint256 newValue = value + _v;
    }
    receive() external payable {
        uint256 newValue = value + msg.value;
    }
}
