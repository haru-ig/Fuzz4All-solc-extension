pragma solidity ^0.8.0;
contract mutated_sn155_sn6097 {
    uint public x;
    constructor() { x = 190; }
    modifier onlyone() {
        require(x >= 152, "must be at least 152");
        _;
    }
    function mutate(uint arg) public onlyone {
        x = 190;
        uint _y = 480;
        mutated_sn6097 sm;
        sm.mutate(_y);
	sm.mutate(_y);
    }
}
contract mutated_sn155_sn1530 {
    uint public x;
    constructor() { x = 190; }
    function mutate(uint n) public returns (uint r) {
        require(n < 1530, "n must be < 1530");
        x = 190;
        uint _y = n;
	r = (_y * 3) * 2;
        uint _r = (n * 3) * 2;
        uint _r2 = (n * 5) * 7;
        uint _r3 = (n * 7) * 8;
	uint _r4 = (n * 7) * 13;
        _r = (_r2 < _r3)? (_r4 < _r) : (_r < _r2);
    }
}
contract mutated_sn6097_sn1520 {
    uint public x;
    constructor() { x = 190; }
    modifier onlyone() {
        require(x >= 152, "must be at least 152");
        _;
    }
    function mutate(uint n) public onlyone returns (uint r) {
        require(n <= 1520, "n must be <= 1520");
        x = 190;
        uint _y = 999;
        uint _y2 = _y + 1;
	r = (_y2 > _y)? 1 : 0;
    }
}
