pragma solidity ^0.8.0;
contract Caller {
    function fallback() public payable {
        address(this).call{value: 1 ether}("");
        require(address(this).balance >= 1 ether);
    }
}
