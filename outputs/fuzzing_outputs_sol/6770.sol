pragma solidity ^0.8.0;
contract Caller {
    event FallbackLog(address a);

    function Fallback() public payable {
        emit FallbackLog(msg.sender);
        assembly {
            return(0, 0)
        }
    }
}
