pragma solidity ^0.8.0;
contract Caller {
    bytes memory data;
    receive() external {
        data;
    }
    fallback () external payable {
        assembly {
         data := mload(add(data, 32))
       }
    }
}
