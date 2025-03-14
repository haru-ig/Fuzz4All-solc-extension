pragma solidity ^0.8.0;
contract Caller {
    function y(uint x) public returns(uint z) {
        return x;
    }
}

pragma solidity >=0.8.0;
contract Caller {
    function y(uint x) public {
        x(y);
    }
    function x(uint y) public { }
}
