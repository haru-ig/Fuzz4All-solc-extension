pragma solidity ^0.8.0;
contract Fallback {
    bool isFallbackCalled = false;
    mapping(address => bool) public fallbacks;

   function Fallback() public {
       fallbacks[msg.sender] = true;
   }
    fallback() public {
         isFallbackCalled = true;
    }

    receive() external payable pure {
        uint256 myEther;
        assembly {
            myEther := mload(0x40)
        }
        if (isFallbackCalled)
            revert("This should not have been executed");
        fallbacks[msg.sender] = true;
    }
}
