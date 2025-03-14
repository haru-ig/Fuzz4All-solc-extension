pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function changeTest1(uint _x) public view returns (uint _y) {
        test = _x;
        while (test == 36) _y++;
        _y = test + 36;
        if (test < 22 * 2) _y--;
        while ((test = test + 1) == 36) _y = test;
        if ((test >> 8) < 3) while ((test = test + 1) % 36 < 17) _y++;
    }
    function changeTest2() public view returns (uint _y) {
        test = 64;
        _y++;
        while (test == 36) _y++;
        while (test!= 36) test--;
        _y--;
        if (test > 17) _y = test - 28;
    }
}
