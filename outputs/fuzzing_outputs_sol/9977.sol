pragma solidity ^0.8.0;
contract CallerSemiFallback {
    uint x = 1;
    function fallback() public payable {
        call.value(address(0))();

        fallback();
    }
    function call() public payable returns (uint) {
        return x;
    }
}
