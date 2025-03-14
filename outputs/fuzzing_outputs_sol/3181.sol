pragma solidity ^0.8.0;
contract Contract11Mut5{
    event Fulfilled(address owner, uint256 indexed value, uint256 a, uint256 b);
    uint256 public num1;
    uint256 public num2;
    uint256 public a;
    uint256 public b;
    constructor(uint256 init1, uint256 init2){
        num1 = init1;
        num2 = init2;
        a = 1;
        b = 2;
    }
    fallback() external payable {
        num1 = a;
        num2 = b;
    }
}
contract Contract36Mut5Fallback{
    bytes32 public name;
    bytes32 public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    constructor(address _owner){
      name = "Contract 36 (Fallback)";
      symbol = "CF36";
      decimals = 18;
      totalSupply = 5;
      balanceOf[_owner] = 5;
    }
    function receive() external payable {
        revert();
    }
}

pragma solidity ^0.8.0;
contract TestReceiverMut5
{
}
contract Contract11Mut5FallbackMut4 is Contract11Mut5Fallback{
    fallback() external payable {
        num1 = 1;
        num2 = 2;
        num1 = 2;
        num2 = 3;
    }
    receive() external {
        Fulfilled(msg.sender, msg.value, num1, num2);
    }
}
