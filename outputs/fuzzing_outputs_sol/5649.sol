pragma solidity ^0.8.0;
contract semanticallyequivalent4
{
    address payable x2;
    receive() external payable {}
}
pragma solidity ^0.8.0;
contract semanticallyequivalent4
{
    address payable x2;
    receive()
    {
        x2.transfer(msg.value);
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent5
{
    address payable x2;
     if(address(0)!= x2) revert;
     function transfer() public payable { }
 }
