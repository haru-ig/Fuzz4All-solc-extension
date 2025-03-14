pragma solidity ^0.8.0;
contract FallbackFunction {
    function doCall(address to, uint256 value) public {
        to.call{ value: value.div(10) }("");
    }
    function main() public {
        uint result = 0;
        doCall(address(this), 2);
        result = 1;
        assert(result == 1);
    }
}
