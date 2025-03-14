pragma solidity ^0.8.0;
contract NewMutatedAbiCoder2 {
    function bar(uint a, uint b, uint c) public pure returns (uint) {
        return a + b * c;
    }
}

contract First {
    address a;
    address b;
    bytes32[34] m;

    function first(address _a, address _b) public {
        a = _a;
    }
    function first(address _a, address _b, uint256 _c) public {
        b = _b;
    }
    function second(address _b, bytes memory _m) public {
        a = msg.sender;
        b = _b;
        m = _m;
    }
    function third(address _b, bytes memory _m) public {
        b = msg.sender;
        m = _m;
    }
    function fourth(address _b, bytes memory _m) public {
        b = msg.sender;
        a = msg.sender;
        m = _m;
    }
    function fifth(address _b) public {
        b = msg.sender;
    }
    function fifth(address _b, uint256 _c) public {
        b = msg.sender;
    }
    function sixth(address _b, uint256 _c) public {
        b = msg.sender;
    }
    function seventh(string memory _m) public {
        b = msg.sender;
    }
    function seventh(string memory _m, uint256 _c) public {
        b = msg.sender;
    }
    function third(bytes memory _m) public {
        b = msg.sender;
    }
    function third(uint256 _c) public {
        b = msg.sender;
    }
    function fifth(byte _b) public {
        b = msg.sender;
    }
    function fifth(string memory _m) public {
        b = msg.sender;
    }
    function fifth(string memory _m, uint256 _c) public {
        b = msg.sender;
    }
    function sixth(bool _b) public {
        b = msg.sender;
    }
    function sixth(int256 _b) public {
        b = msg.sender;
    }
    function sixth(uint _b) public {
        b = msg.sender;
    }
    function seventh(uint _b) public {
        b = msg.sender;
    }
    function seventh(uint256 _b) public {
        b = msg.sender;
    }
    function eighth(uint256 _b) public {
        b = msg.sender;
    }
    function ninth(uint256 _b)
