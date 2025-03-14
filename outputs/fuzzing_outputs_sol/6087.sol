pragma solidity ^0.8.0;
contract EtherTester {
    receive() external payable {
        if(msg.data.length!= 0) {
            revert("invalid length");
        }
    }
}

pragma solidity 0.8.9;
