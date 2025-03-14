pragma solidity ^0.8.0;
contract Mutator {
    using SafeMath for uint256;
    uint256 private i;
    uint256 public a;

    uint160 constant m = uint160(-1);
    mapping (address => uint256) public balance;
    address owner = msg.sender;

    constructor() ERC20() {

        i = 10;
        a = 5;
    }





    function deposit() public payable {
       balance[msg.sender] = i.add(a);
    }

    address payable payableFunction() external pure {
      balance[msg.sender] = i.add(a);
    }


    function changeOwner(address newOwner) public {

      require(msg.sender == owner,"Sender must be the contract owner");

      owner = newOwner;
    }
    function withdraw() public {

      address payable payee = payable(msg.sender);


      payee.transfer(address(this).balance);
    }

    function logAddress() public {
      uint256 num = 20;
      for (uint256 i = 0; i < num; ) {

      {
        i =
