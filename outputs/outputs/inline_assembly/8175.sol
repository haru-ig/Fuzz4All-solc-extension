pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    using Math for uint256;
    constructor (uint256 _a) public {
        a = calc(_a);
    }
    function calc (uint256 _a) private view returns (uint256) {
        if (_a < 100) {
            a += calc(_a + 1);
        }
        return _a;
    }
}
contract Mutated2 {
    uint256 public a;
    uint256 public b;
    constructor (uint256 _a, uint256 _b) public {
        a = calc(_a);
        b = _b;
    }
    function calc (uint256 _a) private view returns (uint256) {
        if (_a < 200) {
            a += calc(_a + 1);
        }
        return _a;
    }
}

pragma solidity ^0.7.0;
import "./Mutated.sol";
import "./Mutated.sol";
contract Mutated {
    uint256 public a;
    uint256 public b;
    constructor (uint256 _a, uint256 _b) public {
        a = calc(_a);
        b = _b;
    }
    function calc (uint256 _a) private view returns (uint256) {
        if (_a < 2000) {
            a += calc(_a + 1);
        }
        return _a;
    }
}
