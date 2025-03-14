pragma solidity ^0.8.0;
contract Caller {
    function fun(uint a, uint b) public {
        a = a;
        b = b;
        fallback();
    }
    receiving function fallback() external payable {
        a = a;
        b = b;
    }
}
