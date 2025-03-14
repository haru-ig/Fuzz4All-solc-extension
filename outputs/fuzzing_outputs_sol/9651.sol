pragma solidity ^0.8.0;
contract Mutated {
    function test() public {
        uint i = 1;
        i++;
        assert(i == 2);
    }
}
contract Caller {

    function call() public {
        uint i = 1;
        Simple(address(this)).test();
        Simple(address(this)).test();
        assert(i == 3);
    }

    receive() external payable {
        uint i = 1;
        Mutated(address(this)).test();
        Mutated(address(this)).test();
        assert(i == 3);
    }
}
