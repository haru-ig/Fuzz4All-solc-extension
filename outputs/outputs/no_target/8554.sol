pragma solidity ^0.8.0;
contract New {
    function get(uint a, uint b) public pure returns (uint) {
        return a * 10 + b;
    }
    function get2(uint a) public view returns (uint) {
        return a + 100;
    }
    function get3(uint a) public {
        return a + 1;
    }
    }
contract Wrapper {
    Equivalent _e;
    constructor () {
        _e = new Equivalent();
    }
    function() external {
        uint res;
        bytes memory data = abi.encodeWithSignature("get(uint,uint)", 42, 1000);
        (res, ) = _e.get2.call(data);
        res -= 100;
        uint res2;
        bytes memory data2 = abi.encodeWithSignature("get(uint)", 42);
        (res2, ) = _e.get3.call(data2);
        assert(res == res2 - 100);
        memory memory m;
    }
    }
