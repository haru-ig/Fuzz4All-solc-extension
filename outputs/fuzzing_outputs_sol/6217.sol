pragma solidity ^0.8.0;
struct Mutant2 {
    function normalCall() payable return (bool);
    function externalCall() external return (bool);
    function internalCall() public pure {
    }
}

pragma solidity ^0.9.0;
contract Mutant1FallbackERC20 {
    function internalCall(address owner, uint256 amount) public pure {}
}

pragma solidity ^0.8.0;
struct Mutant1 {
    function internalCall(address owner, uint256 amount) public pure {}
}
