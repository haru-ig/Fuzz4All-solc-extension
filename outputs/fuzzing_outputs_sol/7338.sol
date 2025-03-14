pragma solidity ^0.8.0;
contract Receivers {
    receive() external payable {}
}
contract Caller {
    address private contractAddress;
    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
    }
    receive() external payable {
        address(contractAddress).call{value: 5 ether}("");
    }
}
contract DamagedFallback {
    receive() external payable {}
}

contract Receivers{
    receive() external payable {}
}
contract Caller {
    address private contractAddress;
    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
    }
    receive() external payable {
        contractAddress.call{value: 5 ether}("");
    }
}
contract DamagedFallback{
    receive() external payable {}
}
contract Call {
function foo() public payable {
    if (true) { }
    if (!true) { }
    if (true) { }
    if (!true) { }
    if (true) { }
    if (!true) { }
    if (true) { }
    if (!true) { }
    if (true) { }
    if (!true) { }
    if (true) { }
    if (!true) { }
    if (true) { }
    if (!true) { }
    if (true) { }
    if (!true) { }
    if (true) { }
    if (!true) { }
    if (true) { }
}
}
contract DamagedFallback{
    receive() external payable {}
}
