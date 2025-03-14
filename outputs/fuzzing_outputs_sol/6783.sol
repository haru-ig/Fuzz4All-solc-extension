pragma solidity ^0.8.0;
contract Caller {
    function Fallback(address  ) public {
        throw;
    }
}


contract Caller {
    fallback Contract toFallback(address) external payable {}
}
