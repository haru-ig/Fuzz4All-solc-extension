pragma solidity ^0.8.0;
contract Immutable {
    bytes public constant ZERO = "Hello World";
    function set (bytes calldata _value) internal pure returns (bool) {
        return (value == ZERO);
    }
}
contract Addressable {
    address public constant ZERO = address(0);
    address contractAddress;
    constructor(address _contractAddress) public {
        contractAddress = _contractAddress;
    }
    function contractAddress () public view returns (address){
        return contractAddress;
    }
}
contract ImmutableState {
    bytes constant public ZERO = "Hello World";
    uint8 constant public ZERO_BYTE = 0x00;
    constructor(address _contractAddress) public {
        contract = _contractAddress;
    }
    function callIfZero(address _contract) internal view {
        require(contractAddress == address(0), "invalid contract");
        this;
    }
    function callIfEmpty(address _contract) internal view {
        require(contractAddress!= address(0), "invalid contract");
        this;
    }
    function callIfNotEmpty(address _contract) internal view {
        require(contractAddress!= address(0), "invalid contract");
        this;
    }
    function contractAddress() public view returns (address) {
        return contractAddress;
    }
}

pragma solidity ^0.8.0;

interface IERC20 {
    function totalSupply() external view returns (uint);
    function balanceOf(address account) external view returns (uint);
    function transfer(address recipient, uint amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint);
    function transferFrom(address sender, address recipient, uint amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint amount);
    event Approval(address indexed owner, address indexed spender, uint amount);
}

pragma solidity ^0.8.0;

library SafeMath {
      using SafeMath for uint256;
      function mul(uint256 a, uint256 b) internal pure returns (uint256
