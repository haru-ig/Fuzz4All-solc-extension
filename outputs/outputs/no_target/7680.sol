pragma solidity ^0.8.0;
contract C {
    function f() public pure {
        mapping (address => address) memory map;
        map[msg.sender] = msg.sender;
        require (msg.sender == 0);
        uint32 x;
        _;
    }
}

pragma solidity ^0.8.0;
contract C {
    function f() public pure {
        uint32 x;
        require (msg.sender == 0);
        map[msg.sender] = msg.sender;
        _;
    }
}

pragma solidity ^0.8.0;
import "../../test/libsolidity/token/ERC20/MockERC20.sol";
contract C is IERC20 {
    bytes4 public x = "256x";
    uint public constant y = 123;
    address public constant z = 0x73986274c6897fe5fa35a78B64C6d7DBB073fe5f;
    event D(address indexed _account);
    mapping (address => address) public _balances;
    constructor() { };
    function balanceOf(address owner) public pure returns (uint) {
        return 0x0;
    }
    function allowance(address owner, address spender) public pure returns (uint) {
        return 0x0;
    }
    function transfer(address to, uint256 value) public returns (bool) {
        return true;
    }
    function tokens() public view returns (bool) {
        return true;
    }
}

pragma solidity ^0.8.0;
contract C is IERC20 {
    bytes4 y = "256y";
    bytes4 z = "256z";
    mapping (address => address) public _balances;
    constructor() {
        _balances[msg.sender] = msg.sender;
    }
    function balanceOf(address owner) public pure returns (uint) {
        return 0x0;
    }
    function allowance(address owner, address spender) public pure returns (uint) {
        return 0x0;
    }
    function transfer(address to, uint256 value) public returns (bool) {
        return true;
    }
    function tokens() public view returns (bool) {
        return true;
    }
}
