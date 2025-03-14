pragma solidity ^0.8.0;
contract Modification {
    uint256 public b;
    uint256 public c;
    uint256 public value;
    Constructor() public {
        c = value;
        b = c - a;
    }
}

pragma solidity ^0.8.0;
contract Constructor {
    uint256 public value;
    constructor(uint256 _value) public {
        value = _value;
    }
}
