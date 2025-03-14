pragma solidity ^0.8.0;
contract Example {
    uint256 public immutable number;
    constructor() {
        number = 0;
    }
    function hello() public pure returns (uint8) {
        return number++;
    }
}

pragma solidity ^0.8.0;
contract Example {
    uint256 public immutable number;
    mapping (uint => bool) public map;
    constructor() {
        number = 0;
        map = new mapping (uint => bool(false));
    }
    function hello() public pure returns (uint8) {
        return map[address(this).balance];
    }
}
