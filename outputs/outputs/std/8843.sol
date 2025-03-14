pragma solidity ^0.8.0;
contract Mutated{
    uint256 public constant value = uint256(-1);
}

pragma solidity ^0.8.0;
contract Unmutated {
    uint256 constant value = uint256(-1);
}
