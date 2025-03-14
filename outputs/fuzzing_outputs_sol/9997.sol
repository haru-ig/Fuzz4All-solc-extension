pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint a;
    uint b;
    constructor() {
        a = 42;
        b = 43;
        x = getDivided(x);
    }


    function getDivided(uint x) internal view returns(uint) {
        if (x > 9) throw;
        return a / b;
    }

    function getX() public view returns(uint) {
        return x;
    }
}
contract Caller {

    address call_me;


    fallback() external { }
    constructor() public {
        call_me = address(new Example());
    }

    function testCallERC20Contract() public {
        uint value = 1 ether;
        call_me.call{value: value}(abi.encodeWithSignature("testCall()"));
    }
    function testCallERC20NonPayableContract(address addr) public {
        uint value = 1 ether;
        addr.call{value: value}(abi.encodeWithSignature("testCall()"));
    }
    function testCallERC20PayableContract(address addr) public {
        uint value = 1 ether;
        addr.call{value: value}("");
    }
}
