pragma solidity ^0.8.0;
interface IERC20 {
    function name() external returns (string memory);

    event Transfer(address indexed from, address indexed to, uint256 value);

    function balanceOf(address who) external view returns (uint256 balance);

    function transfer(address to, uint256 value) external returns (bool success);

    function allowance(address from, address to) external view returns (uint256);

    function approve(address spender, uint256 value) external returns (bool success);

    function transferFrom(address from, address to, uint256 value) external returns (bool success);

    function increaseAllowance(address spender, uint256 addedValue) external returns (bool success);

    function decreaseAllowance(address spender, uint256 subtractedValue) external returns (bool success);
}
pragma solidity ^0.7.0;
contract IERC20Detailed {
    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
}
pragma solidity ^0.7.0;
contract Ownable {
    address payable owner;

    constructor() {
        owner = msg.sender;
    }

    function ownerOf() public view returns (address payable) {
        return (owner);
    }
}
pragma solidity ^0.7.0;
contract IERC677TokenReceiver {
    function onERC677Received(address, address, uint256, bytes calldata) external returns(bytes4);

    function supportsInterface(bytes4 interfaceId) public view returns (bool);

    function _isValidReceiver(address _address) internal view returns (bool);
}
pragma solidity ^0.7.0;
contract ISupportInterface {
    function supportsInterface(bytes4 interfaceId) public view returns (bool);
}
pragma solidity ^0.7.0;
contract IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    function _supportsInterface(bytes4 interfaceId) internal view returns (bool);
}
pragma solidity ^0.7.0;
contract IERC677 is ISupportInterface, IERC677TokenReceiver, IERC165 {

    bytes4 constant INTERFACE_ERC677_TOKEN = 0x01ffc9a7;
    bytes4 constant INTERFACE_ERC677_CALL = 0x6fd9709E;
    uint8 private constant MAGIC_NUMBER = 42;

    string
