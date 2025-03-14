pragma solidity ^0.8.0;
contract Mutate {
    uint256 public immutable x;

    function test(uint256 _newx) {
        x = _newx;
    }

    function changeContract(Mutate _newContract) external {
        _newContract.test(x);
    }
}
