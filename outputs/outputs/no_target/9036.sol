pragma solidity ^0.8.0;
contract Mutators_v08a {
    uint160 public immutable value_v07;
    uint32 public immutable value_v08;
    uint256 public immutable value_v09;
    function equivalent() public {
    }
    constructor(uint32 _v) public {
        value_v08 = _v;
    }
    constructor(uint160 _v) public {
        value_v07 = _v;
    }
    constructor(uint256 _v) public {
        value_v09 = _v;
    }
}
pragma solidity ^0.8.0;
contract Mutators_v09 {
    uint160 public immutable value_v07;
    uint32 public immutable value_v08;
    uint256 public immutable value_v09;
    function equivalent() public {
    }
    constructor(uint32 _v) public {
        value_v08 = _v;
    }
    constructor(uint160 _v) public {
        value_v07 = _v;
    }
    constructor(uint256 _v) public {
        value_v09 = _v;
    }
    constructor(uint80 _v) public {
    }
}
