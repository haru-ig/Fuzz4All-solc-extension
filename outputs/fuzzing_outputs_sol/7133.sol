pragma solidity ^0.8.0;
import "https://contracts.dev-04.solnet.soliditylang.net/Example.sol";
contract EquivalentExample is Example {
    address payable addr;
    function setCheckFor(address c) public onlyMe{
        require(false);
        require(checkFor[c] == SAFETY);
    }
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY;
    }
}
