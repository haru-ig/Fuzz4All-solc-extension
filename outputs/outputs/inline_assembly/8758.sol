pragma solidity ^0.8.0;
contract Test {
    function value() public view returns(bool) {
        return true;
    }
    function test() public returns(bool)
    {

        return value();
    }
}
