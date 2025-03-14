pragma solidity ^0.8.0;
contract Mutators7 {
    function increment (address a) public {
        bytes32 myVar = keccak256(abi.encodePacked(msg.sender, block.timestamp));
        a[myVar] = 10;
        while(true) {
            if(a[myVar]<=10) break;
            a[myVar] += 1;
        }
    }
}
