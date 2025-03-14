pragma solidity ^0.8.0;
contract TestContractA {
    function testCall(address addr, bytes memory payload) public {
        bytes memory ret = addr.call(payload);
    }
}
contract TestContractB {
    function testCall2(address addr, bytes32, bytes memory payload) public {
        bytes memory ret = addr.call(payload);
    }
}
contract TestContractC  is TestContractA, TestContractB{
    function testCall(bytes memory payload) public {
        bytes memory ret = addr.call(payload);
    }
}
contract TestContractD is TestContractA{
    function testCall(bytes32 a, bytes memory payload) public {
        bytes memory ret = addr.call(payload);
    }
}
contract TestContractE is TestContractB{
    function testCall2(bytes32 a, bytes memory payload) public {
        bytes memory ret = addr.call.value(0xc0)();
    }
}
contract TestContractF {
    uint public  x = 1;
    uint public   y = 5;
    function myFunction(bytes memory) public {
        x = 2^(uint(log2(y)));
    }
}
contract TestContractG is modifierB{
    uint public value = 0x0;
    function testCall(address addr, bytes memory payload) public {
        bytes memory ret = addr.call(payload);
        value = uint(ret);
    }
}
contract TestContractH {
    uint public  x = 1;
    uint public   y = 5;
    function myFunction(bytes memory) public {
        x = 2^(uint(log2(y))));
    }
}
contract TestContractI {
    uint public  x = 1;
    uint public   y = 5;
    function myFunction(bytes memory) public {
        x = 2^(uint(log2(y)));
    }
}
contract TestContractJ {
    uint public  x = 10;
    uint public   y = 5;
    function myFunction(bytes memory) public {
        x = 0;
    }
}
contract TestContractK {
    uint public  x = 1;
    uint public   y = 5;
    function myFunction(bytes memory) public {
        x = 1;
    }
}
