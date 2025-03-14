pragma solidity ^0.8.0;
contract Receivers {
    receive() external payable {}
}
contract Caller{
    address receiver;
    receive() external payable {
        (address(receiver)).call{value: 5 ether}("");
    }
}
contract DamagedFallback{
    receive() external payable {}
}
