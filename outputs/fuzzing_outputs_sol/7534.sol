pragma solidity ^0.8.0;
contract ZeroAddressFallbackModifier {
    function setZ(uint256) public {
        payable(address(0)).setZ(1);
    }
}
contract Caller {
    function setValue(uint256 i) public returns (uint256) {
        return callFunction(i);
    }
    function callFunction(uint256 i) public view returns (uint256) {
        FallbackModifier(address(0)).setZ(1);
        uint256 j = (i * 10) + 5;
        return j;
    }
}
