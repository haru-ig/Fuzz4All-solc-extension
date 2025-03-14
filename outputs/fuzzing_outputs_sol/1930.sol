pragma solidity ^0.8.0;
contract New {
    uint256 public constant value = 1;
}

contract Caller2 {
    function callBytes(bytes memory data) pure public returns(bytes memory d) {
        return data;
    }
    function callStr(string memory a) pure public returns(string memory z) {
        z = a;
    }
    function CallWithLowLevel(uint512 a) pure public {
        string memory z = a.toString();
        string calldata x = z;
    }
}
