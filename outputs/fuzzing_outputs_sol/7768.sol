pragma solidity ^0.8.0;
 contract NewSemanticsFallbackMutatingPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external payable {
        value += msg.value;
    }
}
contract Caller {
    uint256 counter;
    constructor(uint value, uint oldValue) public {
        counter = value;
        oldValue = oldValue;
    }

    function run() external {
        address(this).call{value: value}("");
        require(counter >= oldValue + 1, "Something went wrong! Counter is wrong");
    }
}
