pragma solidity ^0.8.0;
contract Example43 {
    fallback function b() external payable {}
    receive () external payable {}
    function a() public payable {}
}
