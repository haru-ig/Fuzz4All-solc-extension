pragma solidity ^0.8.0;
contract Mutate_0012 {
    function f() public returns(uint) {
        uint x;
        address payable y=(address payable) (x );
        return y.transfer(address(this), 1);
    }
}
