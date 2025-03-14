pragma solidity ^0.8.0;
contract Example {
    uint256 internal x;
    function setX(uint256 _x) public {
        x = _x;
    }
    function func() public {
        setX(2);
    }
    function func2() public {
        setX(2);
    }
}
