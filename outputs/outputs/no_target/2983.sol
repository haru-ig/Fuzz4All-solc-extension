pragma solidity ^0.8.0;
contract third1 {
    function f() public pure returns (address) {
        bytes memory b = 0x01;
        address a;
        assembly {
            a := mload(add(b, 3000))
        }
        return a;
    }
    function g() public pure returns (string memory) {
        bytes memory b = 0x00;
        string memory a;
        assembly {
            a := mload(add(b, 3000))
        }
        return a;
    }
    uint public id1;
    uint public id2;
}
