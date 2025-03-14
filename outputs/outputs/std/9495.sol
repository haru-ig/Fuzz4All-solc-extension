pragma solidity ^0.8.0;
contract Mutate2_new_modify {
    string public mystring;
    uint[] uintList;
    mapping(address => bool) addressList;
    mapping(uint => uint) uintMapping;
    mapping(address => uint) addressMapping;
    function addAddress(address newAddress)public{
        require(addressList[newAddress] == false);
        addressList[newAddress] = true;
    }
    function checkBoolAddress(address newAddress)public view returns(bool){
        return addressList[newAddress];
    }
    function setstring1(string memory newstring)public{
        mystring = newstring;
    }
    function test1()public{
        uintList.push(10);
        uintMapping[10] = 11;
        uintList.push(12);
        delete uintMapping[12];
    }
    function test2()public{
        uintMapping[uint(address(this).balance)] = 11;
        uintMapping[uint(address(this).balance)] += 11;
        delete uintMapping[uint(address(this).balance)];
    }
    function test3()public{
        uintMapping[uint(address(this).balance)] = 11;
        uintMapping[uint(address(this).balance)] /= 11;
        delete uintMapping[uint(address(this).balance)];
    }
    function test4()public{
        uintMapping[uint(address(this).balance)] = 11;
        uintMapping[uint(address(this).balance)] *= 11;
        delete uintMapping[uint(address(this).balance)];
    }
    function test5()public{
        uintMapping[uint(address(this).balance)] = 11;
        uintMapping[uint(address(this).balance)] -= 11;
        delete uintMapping[uint(address(this).balance)];
    }
    function test6()public{
        uintMapping[uint(address(this).balance)] = 11;
        uintMapping[uint(address(this).balance)] |= 11;
        delete uintMapping[uint(address(this).balance)];
    }
    function test7()public{
        uintMapping[uint(address(this).balance)] = 11;
        uintMapping[uint(address(this).balance)] &= 11;
        delete uintMapping[uint(address(this).balance)];
    }
    function test8()public{
        uintMapping[uint(address(this).balance)] = 11;
        uintMapping[uint(address(this).balance)] ^= 11;
        delete uintMapping[uint(address(this).balance)];
    }
    function test10()public{

        addAddress(0xb0000c0fc989057c3723a8ab857bb7086f4d3a4e);
    }
    function test()public {
        uintMapping[uint(address(this).balance)] = 11;
        uintMapping[uint(address(this).balance)] -= 11;
        delete uintMapping[uint(address(this).
