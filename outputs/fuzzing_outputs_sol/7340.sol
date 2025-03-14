pragma solidity ^0.8.0;
contract Overflows{
    receive() external pure {
        bool flag = false;
        assembly { flag := extcodesize(0) }
        bytes memory a = new bytes(0);
        assembly { flag := extcodesize(a) }
    }
}
