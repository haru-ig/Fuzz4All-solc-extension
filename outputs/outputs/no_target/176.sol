pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor(uint x) public {
        k = x;
    }
    function set(uint256 x) public {
        k = x;
    }
    function get() public view returns (uint256){ return k; }
}






pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor(uint x) public {
        k = x;
    }
    function set(uint256 x) public {
        k = x;
    }
    function get() public view returns (uint) {
        return k;
    }
}
