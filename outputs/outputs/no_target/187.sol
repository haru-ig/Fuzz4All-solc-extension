pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function set2(uint256 x) public { k = 0; }
}
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function set(uint256 x) public { k = 0; }
}

pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function set(uint256 x) public { k = 0; }
    function set2(uint256 x) public { var x2 = (x >= 0); k = x; }
}
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function set2(uint256 x) public { k = 0; }
}
