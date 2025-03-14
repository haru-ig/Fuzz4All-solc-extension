pragma solidity ^0.8.0;
contract Memento {
    function Fallback(address ) payable public {}
}

pragma solidity ^0.8.0;
contract Failure {
    function Fallback() public {}
    function call() external payable {}
}
