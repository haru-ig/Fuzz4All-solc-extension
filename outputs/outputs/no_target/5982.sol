pragma solidity ^0.8.0;
contract MutatedContract {
    MyContract _my;
    bytes memory _a;
    bytes memory _b;
    constructor(bytes memory b) {
        _a = "1" * 100;
    	_b = b;
        _my = new MyContract(_a);
    }
    function setA(bytes memory a){
    	_a = a;
    }
    function add(bytes memory a, bytes memory b) public pure returns (bytes memory) {
        bytes memory a0;
        assembly {
        	a0 := b
        	mstore(0x40, 0xabcd)
        	sstore(_a)
        }
        return abi.encodePacked(a0, a);
    }
    function sub(bytes memory a, bytes memory b) public pure returns (bytes memory) {
        bytes memory a0;
        assembly {
        	mstore(0x40, 0xabcd)
        	sstore(_a)
        }

        return abi.encodePacked(a, a0);
    }

    function m() public view returns (bytes memory) {
        bytes memory result = _my.add(_a, _b);
        bytes memory v = "Hello world!" * 100;
        bytes memory w = "Hello World!" * 100;
        bytes memory x = "1" * 100;
        bytes memory y = "1" * 100;
        bytes memory z = _a * 100;

        return abi.encode(result, v, w, x, y, z);
    }
}
