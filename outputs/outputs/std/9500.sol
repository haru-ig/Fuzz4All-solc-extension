pragma solidity ^0.8.0;
contract Mutate2 {
    address address1;
    address address2;
    address address3;
    function setstring2(address newaddress)public{
        address1 = newaddress;
    }
    function getAddress1()public view returns(address){
        return address1;
    }
    function setstring3(address newaddress)public{
        address2 = newaddress;
    }
    function getAddress2()public view returns(address){
        return address(address2);
    }
}
