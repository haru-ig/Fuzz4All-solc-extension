pragma solidity ^0.8.0;
import "./IGovernorSHIPTOKEN.sol";


contract ERC20Interface {
    function approve(address spender, uint256 amount) external;
    function transferFrom(address from, address to, uint256 amount) external;
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
}
contract MockERC20 is ERC20Interface {
    constructor() public {
    }
    function change(uint256 newRate) public {
    }
    function withdraw(address to, uint256 value) public {
    }
    function governanceToken() public view virtual returns (address) {
        return msg.sender;
    }
    function approve(address spender, uint256 amount) public {
    }
    function transferFrom(address from, address to, uint256 amount) public {
    }
    function totalSupply() public view virtual returns (uint256) {
        return 100000;
    }
    function balanceOf(address account) public view virtual returns (uint256) {
        return 100000;
    }
}
contract MockGOV is ERC20Interface {
    constructor() public {
    }
    function change(uint256 newRate) public {
    }
    function withdraw(address to, uint256 value) public {
    }
    function governanceToken() public view virtual returns (address) {
        return address(new MockERC20());
    }
    function approve(address spender, uint256 amount) public {
    }
    function transferFrom(address from, address to, uint256 amount) public {
    }
    function totalSupply() public view virtual returns (uint256) {
        return 100000;
    }
    function balanceOf(address account) public view virtual returns (uint256) {
        return 100000;
    }
}
contract BasicToken is ERC20Interface {


    uint256 public totalSupply_;


    mapping(address => uint256) public balanceOf_;


    mapping(address => uint256) public allowance_;


    function totalSupply() public view returns (uint256) {
        return totalSupply_;
    }

    /**
    * @dev Gets the balance of the specified account.
    * @param account The address to query
