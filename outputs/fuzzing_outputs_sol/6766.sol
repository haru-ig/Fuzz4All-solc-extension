pragma solidity ^0.8.0;
contract Caller {
    function Fallback(uint256 a) public payable {
        if (a > 1) throw;
        emit FallbackLog(a);
    }
    function FallbackLog(uint256 a) {
        x.push(abi.encode(a));
        emit FallbackLog(a);
    }
}
