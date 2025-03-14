pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {}
    fallback() public payable {}
    receive() public payable {}
}


pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {}
    function transfer() public payable {}
    function fallback() public payable {}
    function call() public payable {}
}
