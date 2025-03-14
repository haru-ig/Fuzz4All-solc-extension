pragma solidity ^0.8.0;
contract SimpleExample3WithSemantics {
    uint256 public counter;
    constructor () public {
    }
    function increment() public pure {
        uint256 value = 0;
        value = value + 1;
    }
}




pragma solidity ^0.8.0;
contract NoAccessToFunctions0 {
    function accessCheck0() public {
        function() public {
            address storage addressField;
        }
    }
    function accessCheck1() public {
        function() public view returns (uint) {
            address storage addressField;
        }
    }
}

pragma solidity 0.8.4;
interface IERC721 {
    function transferFrom(address from, address to, uint256 id) external;
    function transferFrom(address from, address to, uint256 id) public;
    function approve(address to, uint256 id) external;
    function approve(address to, uint256 id) public;
    function getApproved(uint256 id) external view returns (address operator);
    function getApproved(uint256 id) public view returns (address operator);
    function setApprovalForAll(address operator, bool approved) external;
    function setApprovalForAll(address operator, bool approved) public;
    function isApprovedForAll(address operator, address owner) external view returns (bool);
    function isApprovedForAll(address operator, address owner) public view returns (bool);
}
pragma solidity 0.8.4;
interface IERC20 {
    function transfer(address to, uint256 value) external;
    function transfer(address to, uint256 value) public;
    function allowance(address owner, address spender) external view returns (uint256);
    function allowance(address owner, address spender) public view returns (uint256);
    function approve(address spender, uint256 value) external;
    function approve(address spender, uint256 value) public;
    function increaseAllowance(address spender, uint256 addedValue) external;
    function increaseAllowance(address spender, uint256 addedValue) public;
    function decreaseAllowance(address spender, uint256 subtractedValue) external;
    function decreaseAllowance(address spender, uint256 subtractedValue) public;
}
