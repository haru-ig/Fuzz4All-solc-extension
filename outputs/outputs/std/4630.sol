pragma solidity ^0.8.0;
contract NewMutated {
    uint256 constant INITIAL_X = 43;
    uint256 private x = INITIAL_X;
    event XSet(uint z);
    constructor(address payable _payee) {
        x = 42;
        emit address(this).call{value: address(this).balance}(_payee.call{value: 2 ether}());
    }
    function setX(uint256 y) public {
        x = x + y;
        emit XSet(x);
    }
    function getX() public view returns (uint256) {
        uint256 z = x;
        return z;
    }
}
