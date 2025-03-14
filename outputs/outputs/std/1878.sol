pragma solidity ^0.8.0;
import "./Ownable.sol";
contract Modifiable is OwnableInterface {
    address public owner = msg.sender;

    function transferOwnership(address newOwner) external returns (bool) {
        if (owner!= newOwner) {


        changeOwner(newOwner);
        }
        return true;
    }

    function changeOwner(address newOwner) internal onlyOwner {



        emit SetOwnerId(previousOwner, newOwner);
        owner = newOwner;
    }
    function getPreviousOwnerAddress() public view returns (address) {
        return previousOwner;
    }

    event SetOwnerId(address previousOwner, address newOwner);
    address previousOwner = address(0);

    modifier onlyOwner() {
        if (msg.sender!= owner)

            revert();
        _;
    }
    modifier ownerOnly() {
        if (msg.sender!= previousOwner)

            revert();
        _;
    }
}
