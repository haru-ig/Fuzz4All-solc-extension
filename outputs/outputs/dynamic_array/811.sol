pragma solidity ^0.8.0;
contract Example {
    uint public b = 0;
    function b(uint x) public view returns(uint) {
        if (x == 1) {
            for (uint j = 0; j < 10; j++) b += 1;
        } else {
            b += 1;
        }
        return b;
    }
}
