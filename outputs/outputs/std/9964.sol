pragma solidity ^0.8.0;
contract AdjustNumber {
    uint256 x;
    uint256 get() public view returns(uint256);
}
pragma solidity ^0.8.0;
contract Mutate {
    bool immutable test = true;
    function fn() public {
        test = false;
        x = x + 1;
    }
}
