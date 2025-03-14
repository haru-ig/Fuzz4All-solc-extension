pragma solidity ^0.8.0;
contract mutatedCaller {
    receive() external payable {}
    function receive() public payable { }
    function fallback() public payable {}
}

use mutatedCaller;
contract Caller {
    address contractA;
    constructor() public {
        contractA = address(new mutatedCaller());
    }
    function transferByCall(uint256 amount) public {
        contractA.call{value: amount}("");
    }
    function transferByCall(uint256 amount, uint256 data) public {
        contractA.call{value: amount, data: data}("");
    }
    function transferByCall(uint256 amount, data calldata data1, bytes memory data2) public {
        contractA.call{value: amount, data: data1, data: data2}("");
    }
    function transferBySend(uint256 amount) public {
        contractA.send{value: amount}("");
    }
}
