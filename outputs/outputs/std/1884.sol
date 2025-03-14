pragma solidity ^0.8.0;
import "./OwnableInterface.sol";
interface UserInterface {
    function userAddress() external view returns (address);
    function isOwner(address _userId) external view returns (bool);
}

contract Example {
    function example() public pure{};
}

pragma solidity ^0.8.0;
interface UserInterface {
    function userAddress() external view returns (address);
    function isOwner(address _userId) external view returns (bool);
}

pragma solidity ^0.8.0;
contract User is OwnableInterface, uint256, UserInterface {
    address payable public payableOwner;
    address[] public userAddresses;
    uint256 public userAddCounter = 0;
    address public exampleAddress;
    event NewUser(address _userAddress);
    event UserSetOwner(address _userAddress, address _newOwner);
    constructor() {
    }
    function userAddresses() public view returns (address[] memory) {
        return userAddresses;
    }
    function example() public view returns (address memory) {
        return address(0x13869cB7BE016b79940D4b734a6902193268671D);
    }
    function userAddress() public view returns (address memory) {
        return msg.sender;
    }
    function exampleFunction() public {
        Example example = new Example();
        example.example();
        emit NewUser(msg.sender);
    }
    function setExampleAddress(address _newAddress) public onlyOwner() {
        exampleAddress = _newAddress;
    }
    function setOwner(UserInterface userInterface) public onlyOwner {

        bool success = address(userInterface).call("");
        require(success, "Could not set owner.");
        emit UserSetOwner(msg.sender, emit.address);
    }
}
