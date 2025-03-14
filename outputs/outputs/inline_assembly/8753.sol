pragma solidity ^0.8.0;
contract Test {
    function value() public view returns(bool) {
        uint256 x = 3500;
        return (x + 1000) >= 3000;
    }
}
