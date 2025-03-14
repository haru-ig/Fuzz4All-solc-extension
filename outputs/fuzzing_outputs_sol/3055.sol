pragma solidity ^0.8.0;
contract Example7 {
    fallback function foo() payable {
        Example7 instance = Example7(address(7));
        instance.bar1();
    }
    fallback function foo(bytes memory data) external {
        Example7 instance = Example7(address(7));
        instance.bar2(data);
    }
    fallback function foo(uint x, uint y) external {
        Example7 instance = Example7(address(7));
        instance.bar3(x, y);
    }
    fallback function foo(address receiver) public payable {
        Example7 instance = Example7(address(7));
        instance.bar4(receiver);
    }
}
