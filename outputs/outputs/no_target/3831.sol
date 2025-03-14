pragma solidity ^0.8.0;
contract R4 {
    uint public p;
    uint public u;
    uint public b;
    function swap() mutates {
        uint temp = u;
        u = b;
        b = temp;
    }
    function get() public view returns (uint) {
        p = a + a;
        return p + u + u*u - p + p;
    }

}
