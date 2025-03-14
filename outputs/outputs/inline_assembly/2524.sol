pragma solidity ^0.8.0;
contract Mod2 {
    modifier mod2(uint32 x) { if (x%2 == 0) _; else revert;}
    function square(uint32 x) public returns(uint32) {
        require(x < 10**20);
        return x * x;
    }
}  <fim_middle>
contract Comp4 {
    uint32 _a;
    constructor(uint32 _a) {
        _a = _a;
    }
    uint32 public increase;
    function increaseBy(uint32 _a) public {
        increase += _a;
    }
    function getA() public view returns(uint32) {
        return _a;
    }
}
