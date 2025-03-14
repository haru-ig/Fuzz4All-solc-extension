pragma solidity ^0.8.0;
contract FallbackMutate {
    function contract(Caller2 _c) {



        address payable c = address(this);
        uint x = c.call{value: 1 ether}("");
    }
}
