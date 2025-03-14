pragma solidity ^0.8.0;
contract Caller {
    Simple internal s;
    address internal caller;
    function fallback(uint256 val) payable public {
        s.fallback(val);
    }
    function () public payable {}
}
