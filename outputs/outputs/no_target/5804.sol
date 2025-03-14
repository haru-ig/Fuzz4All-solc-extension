pragma solidity ^0.8.0;
contract Foo {
    function setfoo(address _foo) external {


        address private bar = address(this);
        Bar barv1 = Bar(_foo);
        Bar barv2 = Bar(address(this));
    }
}
