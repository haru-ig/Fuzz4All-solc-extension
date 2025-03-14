pragma solidity ^0.8.0;
interface A {
    function bar() external view;
}

contract Foo is A {
    function bar() public view override returns (int) {
        return 42;
    }
}

contract B is A {
    constructor(address myAddress) {
        address myContract = msg.sender;
        uint8 myContractCodeSize = type(A).code.length;
    }

    function bar() public override returns (int) {
        return 42;
    }
}

contract Caller {
    function callFoo() external {
        address myContract;
        (myContract, ) = address(new B()).call{value: 1 ether}("");
        Foo(myContract).bar();
    }

    function callFallback() external payable {
    }
}

contract ContractWithFallback {
    function callFallback() external {}

    fallback() external payable {
    }

    receive() external payable {
    }
}
