pragma solidity ^0.8.0;
contract Semantic {
    string x;
    function f() public {
        uint256 _x = uint256(uint(x));

        x = _x.toString();
        uint256 y;
        uint z;

    }
}
