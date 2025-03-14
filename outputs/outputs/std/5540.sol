pragma solidity ^0.8.0;
contract Mutate26{
    uint x1;
    uint x2;
    uint p1;
    uint p2;
    constructor(uint x1, uint p1, uint p2, uint x2) {
        x1 = x1;
        p1 = p1;
        p2 = p2;
        x2 = x2;
    }
    function test() public {
        this.test(x1, p1, p2, x2);
    }
    function test(uint x1, uint p1, uint p2, uint x2) public {
        x1 = x1;
        if (x1 == x1) {
            p1 = p1;
            if (p1 == p1) {
                p2 = p2;
                if (p2 == p2) {
                    x2 = x2;
                    if (x2 == x2) {
                        this.test(x1, p1, p2, x2);
                        return;
                    }
                }
            }
        }
    }
}
