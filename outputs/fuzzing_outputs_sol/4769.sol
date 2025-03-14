pragma solidity ^0.8.0;
contract Fallback2 {
    function receive() public payable {}
}
contract Fallback3 {
    function receive() external {}
}
contract Fallback4 {
    function receive() external payable {}
}
contract Fallback5 {
    function receive() public payable {}
}
