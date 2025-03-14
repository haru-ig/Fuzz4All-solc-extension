pragma solidity ^0.8.0;
import "../../node_modules/openzeppelin-solidity/contracts/access/Ownable.sol";
contract ContractWithOwnable {
    address public constant owner = msg.sender;
    modifier onlyOwner() {
        require(msg.sender == owner, "");
        _;
    }
    function restricted() public onlyOwner {
        x = x_;
        x_ += x_;
        emit Restricted(x, x_);
    }
}
