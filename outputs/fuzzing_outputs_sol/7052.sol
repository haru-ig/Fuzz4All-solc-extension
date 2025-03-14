pragma solidity ^0.8.0;
contract ContractWithFallback {
    receive () external payable {
    }
}

contract Caller {
    contract ContractWithFallback {
        function fallback() external payable {}
    }
    function sendEther() public payable {}
}
