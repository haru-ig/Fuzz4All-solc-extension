pragma solidity ^0.8.0;
interface NoFallback {
    function fallback() external payable {}
}

pragma solidity ^0.8.0;
contract MistakenFallbackContract {
    function receive() public payable {}

    fallback() external payable {
        fallback_func();
    }

    function fallback_func() public payable {}
}
