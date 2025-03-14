pragma solidity ^0.8.0;
contract L2 {
           uint256 x;
        function add1() public {
           x += 1;
    }
}

pragma solidity ^0.8.0;


contract MyContract {
             L10 l1;
             L2 l2;
        function add1() public {l1.add1();}
        function add2() public {l2.add1();}
        function print() public view returns (uint256) {return l1.x;}
}
contract Ownable {
            address public owner;
        constructor() {owner = msg.sender;}
        modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

     function transferOwnership(address newOwner) public onlyOwner { owner = newOwner; }
   }

pragma solidity ^0.8.0;

contract L10{
uint x;
function Add(){
  x += 1;
}
}
pragma solidity ^0.8.0;

contract L2{
uint x;
function Add(){
  x += 1;
}
}
pragma solidity ^0.8.0;

contract Test{
  address payable owner;
  constructor(){
    owner = msg.sender;
  }
function setOwner(){
  owner = msg.sender;

}
function print() view returns (uint){
  return x;
}
function check(){
  require(address(this).balance >= 2 ether );
}
function run()
{
    MyContract.setup(address(this),2 ether);
    check();
    assert(MyContract.print() > 0);
}
}

pragma solidity ^0.8.0;
import "./Ownable.sol";

contract MyContract is Ownable {
    L10 l1;
    L2 l2;

    function add1() public{
    l1.add1();
