pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated1 {
    uint public a;
    uint public b;
    constructor (uint Y, uint W) public {
        require((Y < W) && (Y > 1) && (W == 100), "ERROR: W is 100 but Y < W");
        b = W * Y / 10;
        a = b;
    }
    function increment() public returns (uint) {
        return (a + 1);
    }
    function update() public {
        a = c[msg.sender] * 2 / 3;
        b = 0;
        c[msg.sender] = 0;
        require(a == 1, "ERROR: Update 1: a == 1 but C was 2");
        c[msg.sender] = 1;
        require(b == 1, "ERROR: Update 1: b == 1 but C was 3");
    }
}
