pragma solidity ^0.8.0;
contract S2 {
    S4 s;
    constructor (S4 s) public {
        this.s = s;
        s.e;
        s.e;
        s = s;
        s = s;
    }
    modifier c() {
        assert(false);
        _;
    }
}
