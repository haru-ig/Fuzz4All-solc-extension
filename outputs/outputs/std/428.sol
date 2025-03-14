pragma solidity ^0.8.0;
contract Test {
    uint public test;
    constructor() public {
        test = 0;
    }
    function mutate() public {
        test = 42;
    }
    function printMem() public {
        address[] memory addrs = new address[](1);
        addrs[0] = 0x1234;
        print("address[1] = ", address(addrs[0]));
    }
}
