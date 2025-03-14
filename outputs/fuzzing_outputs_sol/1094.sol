pragma solidity ^0.8.0;
contract ContractWithFallback {
    function fallback() public payable {
        selfdestruct(msg.sender);
    }
}
pragma solidity ^0.8.0;
contract ContractWithFallback2 {
    function fallback() receive() public {
        selfdestruct(msg.sender);
    }
}
