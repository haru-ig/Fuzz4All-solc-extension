pragma solidity ^0.8.0;
contract ContractWithFallback14 is ContractWithFallback13 {
  receive() payable public {
    modify(msg.sender, msg.value);
  }
}
pragma solidity ^0.8.0;
contract ContractWithFallbackTest14 {
  function main() public {
    address foo2;
    (foo2, ) = createContract();
    assertEq(foo2, msg.sender);
  }

  function createContract() public view returns (address, bytes32) {
    address foo;
    (foo, ) = ContractWithFallback14.initialize();
    return (foo, ContractWithFallback14.fallback());
  }
}




interface IERC20 {
    function totalSupply()
        external
        view
        returns (uint256);

    function balanceOf(address account)
        external
        view
        returns (uint256);

    function transfer(address to, uint256 value)
        external
        returns (bool);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 value)
        external
        returns (bool);

    function transferFrom(address from, address to, uint256 value)
        external
        returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}





library SafeMath {

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
