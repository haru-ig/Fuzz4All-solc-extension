pragma solidity ^0.8.0;
contract Caller
{
    function sendEther() public payable{}
    function sendEther(uint x) public payable{
        require(x == 0, "Must not send anything");
        selfdestruct(payable(address(42)));
    }
}




pragma solidity ^0.8.0;

interface IExampleInterface
{
   uint56 public getNumberOfFingers;
}





pragma solidity ^0.8.0;




pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
pragma experimental ABIEncoding(0.12.0);

import "../../interfaces/IExampleInterface.sol";

contract Example
{
   (uint) public fingerCount;

   function update() public {
      address exampleInterface = address(uint160(0xDECAFEBEE13ED076));
      (fingerCount) = IExampleInterface(exampleInterface).getNumberOfFingers();
   }

   function testSendEther() public payable {
      uint256 num = 10;
      if (num > 10) {
         Caller(msg.sender).sendEther(num);
      }
   }
}
