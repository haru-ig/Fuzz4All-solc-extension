pragma solidity ^0.8.0;
contract CallToNonFallback {
    function get() public payable {
        address foo = (address(this)).balance - 1 ether;
        assert(foo == 8888888888 ether);
    }
}
