pragma solidity ^0.8.0;
interface ICantBeCalled {
    function foo() external;
    function bar() public payable;
}
contract Caller is ICantBeCalled {
    function bar() public payable {
        bar2();
        bar3();
    }
    function bar2() public{
        foo();
        foo();
    }
    function bar3() public payable {
        foo();
    }
}

pragma solidity ^0.8.0;
interface ITakeEther {
    function e () external payable;
}
contract Example3 is ITakeEther {
    string public name;
    uint256 public x;
    bytes32 public y;
    constructor (string memory _name, uint256 _x) {
        name = _name;
        x = _x;
        y = keccak256("example 3");
    }
}
