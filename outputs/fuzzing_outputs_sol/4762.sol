pragma solidity ^0.8.0;
contract Caller {
    Fallback public fallback;


    function receive() external payable {
        fallback.receive();
    }
}
