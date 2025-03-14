pragma solidity ^0.8.0;
contract FallbackFunctionCall {
    address payable constant receiver = payable(address(uint160(uint256(0xffffffffffff))));
    function fallback() public pure {
        receiver.call{value: 1 ether}("");
        address(uint160(uint256(0xffffffffffff))).call{value: 1 ether}("");
    }
}
