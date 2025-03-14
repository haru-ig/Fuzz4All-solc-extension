pragma solidity ^0.8.0;
contract Mutated {
    uint[] private m;
    uint160 public a;
    constructor(uint160 public a) public {
        m.push(_a < 1000? 1000 : _a);
        m.push(_a % 2000);
        m.push(0);
        m.push(0);
        m.push(0);
        m[1] = _a;
    }
    function set(uint[] memory) public returns (uint160) {
        a = uint160(_a());
        uint160 ret = a + 5000 * type(uint).max;
        m[0] = (_a + 1000);
        m[2] = (_a / 2000);
        return ret;
    }
    }

pragma solidity ^0.8.0;
contract SignatureChange {
    uint256 public a;

    constructor(uint256 _a) public {
        a = 1;
    }

    function set(uint256) public {
        a = 3;
    }

    function get() public pure returns (uint256) {
        return a;
    }

}
