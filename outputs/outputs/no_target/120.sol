pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IGovernorshipToken.sol";

contract ExampleGovernorshipToken is IGovernorshipToken, IERC20 {
    constructor(uint256 _rate) {
        _mint(msg.sender, _rate);
    }

    function change(uint256 _rate) public {
        _mint(msg.sender, _rate);
    }

    function withdraw(address _to, uint256 _value) public {
        (_to).transfer(_value);
        _mint(msg.sender, _value);
    }

    function governanceToken() public view returns (address) {
        return address(this);
    }
}
