pragma solidity ^0.8.0;
contract Caller{
    address public contractaddress;
    address targetcontract=address(this);
    address public contractaddress1;
constructor() public{
    contractaddress=address(this);
    contractaddress1=contractaddress;
}
    fallback () external payable {

        if(contractaddress!=address(0)){
            uint256 x=contractaddress1.balance;
            abi.transfer(contractaddress, x);
        } else {

            contractaddress.transfer(msg.value);
        }
    }
}
