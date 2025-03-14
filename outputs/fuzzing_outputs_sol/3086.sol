pragma solidity ^0.8.0;
contract Example12 {
    uint x;
    fallback function() external payable {}
}
function sendEther() external payable {}
contract Example13 {
    uint x;
    receive() external {}
}
