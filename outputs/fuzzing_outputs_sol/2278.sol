pragma solidity ^0.8.0;
contract Mutator {
    uint256 public _x;
        constructor() {
    }
    function add(uint256 x) internal pure returns (uint256) {
            _x = _x + x;
            return _x;
    }
}


pragma solidity ^0.8.0;
contract Reverter {
        constructor() {
    }
    function add(uint256 x) internal view {
        require(x > 0, "negative number");
        revert();
    }
}
