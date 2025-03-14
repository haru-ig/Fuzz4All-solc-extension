pragma solidity ^0.8.0;
contract EtherFallbackExample{
    receive() external {
        console.log("Ether fallback function called");
    }
}
