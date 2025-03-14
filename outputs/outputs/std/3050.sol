pragma solidity ^0.8.0;
interface IERC20Mintable {
    function mint(address to, uint256 amount) external;
}
contract Array {

    address ZERO_ADDRESS = 0x000000000000000000000000000000000000000;

    bool initialized = false;
    address[] public addressList;

    mapping(address=>uint256) public balanceOf;

    modifier checkInitialized() {
        require(initialized == true);
        _;
    }

    constructor(uint256 initialBalance) {
        initialize(initialBalance);
        addressList.push(address(this));
        addressList.push(ZERO_ADDRESS);
    }


    function initialize(uint256 initialBalance) internal checkInitialized {
        addressList.push(address(new Array(initialBalance)));
        balanceOf[address(addressList[addressList.length - 2]))] = initialBalance;
        balanceOf[address(addressList[addressList.length - 1])] = 0;
        initialized = true;
    }


    function _mint(address account) public {
        balanceOf[account] += 1;
        addressList.push(account);
    }


    function _burn(address account) public {
        balanceOf[account] -= 1;
        addressList.splice(addressList.length - 1, 1);
    }

    function getSize() external view returns (uint256) {
        return addressList.length;
    }


    function getBalance(address account) external view returns (uint256) {
        return balanceOf[account];
    }


    function getSizeArray() external view returns (uint256) {
        return addressList.length;
    }


    function getArraySize() external view returns (uint256) {
        return addressList.length;
    }


    function getElement(uint256 index) external view returns (address) {
        return addressList[index];
    }


    function getContract() external view returns
