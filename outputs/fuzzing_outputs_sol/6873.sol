pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public payable {

    }
}

pragma solidity ^0.8.0;
contract LongRunning {
    receive() external payable {

    }
}
