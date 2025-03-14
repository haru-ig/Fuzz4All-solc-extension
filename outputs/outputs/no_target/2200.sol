pragma solidity ^0.8.0;
contract Modifications1_SEM10 {
    constructor(uint256 _x, uint256 _y) public {
        a = _x;
        b = _y;
    }
    function f() public returns (uint256) {
        uint256 x = 1 + a;
        return x * 3 > b * 3? x * 3 : b * 3;
    }
    uint256 public a;
    uint256 public b;
}

pragma solidity ^0.8.0;
contract Modifications1_SEM11 {
    uint x;
        constructor(uint _x) public{
            x = _x;
        }
        function f() public{
            x = x / 2 > x * 3? x / 2 : x * 2 - 15;
        }
}
