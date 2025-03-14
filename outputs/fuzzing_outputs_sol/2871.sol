pragma solidity ^0.8.0;
contract Foo {
    string s;
    constructor(string memory _s) public {
        s = _s;
    }
    function setA (bytes calldata _a) public {
        bytes memory _temp = new bytes(_a.length);
        assembly {
            mstore(add(_temp, 127), mload(_a))
            sstore(_temp)
        }
    }
    function setB(bytes20 _a) public {
        bytes memory _temp = new bytes(32);
        assembly {
            mstore8(_temp, 32)
            sstore(_temp)
            mstore(add(sub(_temp, 32), 0))
        }
    }
    receive () external payable {
        s = address(msg.sender).toEth(2);
    }
    function getB() public returns (bytes20) {
        return bytes20(bytes(smemory));
    }
    function getA() public returns (bytes) {
        return bytes(s);
    }
}
