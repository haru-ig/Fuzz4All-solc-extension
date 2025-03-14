pragma solidity ^0.8.0;
contract NewSemanticsCallerWithFallback2 {
    receive() external {}
    fallback() external {}
}
contract Caller {
    fallback() public payable {
        address(uint16(msg.data)).call{value:address(this).balance}("");
    }
}
