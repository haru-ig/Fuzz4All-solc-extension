pragma solidity ^0.8.0;
contract Mutator {
    uint internal _count = 15;
    function _mutate() public {
        _count += 10;
    }
    function balance() public view returns (uint) {
        return _count;
    }
}
interface IMutator {
    function balance() public view returns (uint);
    function _mutate() external;
}
contract Escrow {
address payable internal _buyer;
IERC20 internal _depositedToken;
uint internal _depositedAmount;
}
