pragma solidity ^0.8.0;
contract Modifications3_SEM9 {
    constructor(uint256 _x, uint256 _y) public {
        a = _x;
    }
    function f() public returns (uint256) {
        return uint256(a >= 0? uint256(a) + uint256(3) : a);
    }
    uint public a;
}

pragma solidity ^0.7.0;
contract Modifications3 {
    constructor(uint256 _x, uint256 _y) public {
        a = _x;

    }
    function f() public view returns (uint256) {
        return uint256(a < 2? uint256(a) + uint256(3) : a);
    }
    uint public a;
}
