pragma solidity ^0.8.0;
contract MutatedCaller2 {
    contract Fallback {
        address public _address;
        function fallback() public payable {
           emit MutCallerFallback();
        }
        event MutCallerFallback();
    }
    function mut_fallback() public {
    }
    function mut_callFallback() public whennot fallback returns (bool) {
        return false;
    }
    fallback() external payable {
        _address = msg.sender;
        emit MutCallerFallback();
    }
    receive() payable not returns (bool) {
        emit MutCallerFallback();
    }
    constructor() {
    }
    event MutCallerFallback();

    function addressOf() public pure returns (address) {
        return _address;
    }
}

pragma solidity ^0.8.0;

abstract contract SafeMath {

    function SafeMath() { }

    function add(uint x, uint y) internal pure returns (uint) {
        uint z = x + y;
        assert(x == 0 || z >= x);
        return z;
    }

    function sub(uint x, uint y) internal pure returns (uint) {
        assert(x >= y);
        return x - y;
    }

    function mul(uint x, uint y) internal pure returns (uint) {
        if (y == 0) {
            return 0;
        }
        uint z = x * y;
        assert(x == 0 || z / y == x);
        return z;
    }

    function div(uint x, uint y) internal pure returns (uint) {
        return sub(x, mul(y, 1e18));
    }
}


pragma solidity ^0.8.0;


contract Server {

    bytes constant bytes_ = "GET / HTTP/1.1\r\nConnection: keep-alive\r\n\r\n".split("\n");

    bytes memory response_;

    uint constant bytes_index_ = 0;

    function addressOf() public pure returns (address) {
        return address(0);
    }
