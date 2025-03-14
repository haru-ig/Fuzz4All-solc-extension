pragma solidity ^0.8.0;
contract c {
    function m(uint8 x1[7]) public payable returns (uint8 x2[2], uint16 x3) {
        x3 = m(x1);

        x2 = m(x1);
        m();
        m();
    }
}
