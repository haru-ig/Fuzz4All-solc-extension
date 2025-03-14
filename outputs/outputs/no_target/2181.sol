pragma solidity ^0.8.0;
contract Modifications3A_SEM7 {
    constructor(uint256 _X) public {
        b = _X;
    }

    function f() public returns (uint256) {
        uint256 _X = (uint256(a) + 1);
        return uint256(uint256(_X) + uint256(2));
    }



    uint public b;
    uint public a;
}
