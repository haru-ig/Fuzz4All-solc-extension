pragma solidity ^0.8.0;
contract Mutated {
    uint private a;
    uint256 private b;
    mapping (uint => uint256) private counter;

    function change(uint x) public {
        a = a + 1;
        b = a + 3*1*2*(x + 2);
        uint256 c;
        if (counter[0] == 1) {
            b = b + (x + 1)*b;
        }
    }
    function notEnoughChange(uint x) public {
        a = a + 1;
        b = b + (x + 1)*b;
        counter[0] = 1;
    }
    function call(uint x) public {
        a = x + 1;
        a = x + 2;
        b = a + 3*a*2*(a + 3);
        uint256 c;
        if (counter[0] == 1) {
            b = b + (x + 1)*b;
            c = a*2*3*3*2*((a + 2 + a)*2*(a + 2)) + b;
        }
    }
    function callNotEnoughChange(uint x) public {
        a = x - 1;
        b = a+b+b*2*(a+2)*3;
        counter[0] = 1;
    }
}
