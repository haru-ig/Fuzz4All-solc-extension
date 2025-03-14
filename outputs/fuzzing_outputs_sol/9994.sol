pragma solidity ^0.8.0;
contract MutatedCaller is Caller {
    function fallback(uint x) external payable {
        require(x == 142);
    }
}
