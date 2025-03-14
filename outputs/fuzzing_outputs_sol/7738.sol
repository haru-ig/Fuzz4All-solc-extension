pragma solidity ^0.8.0;
contract NewSemanticsFallbackPure {
    uint256 internal value;
    uint public constant _X = 1;
    function get() public view returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external pure {

        require(msg.value == 1 wei * (_X - 1), "Caller: wrong value");
        value += _X * msg.value;
    }
}
