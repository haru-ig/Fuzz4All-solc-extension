pragma solidity ^0.8.0;
contract B {
    address[] private addresses;
    uint names;
    uint minlength;
    uint maxlength;
    uint[] private addressArray;
    function set(address[] memory newAddresses) public {
        for(uint i = 0; i < newAddresses.length;i++){
            addresses.push(newAddresses[i]);
        }
    }
    function setname(uint index, string memory newAddress) public{
        addressArray[index] = address(newAddress);
    }
    function setmin() public{
        if (namelength > 0) {
            minlength = namelength;
        } else {
            minlength = 0;
        }
    }
    function setmax(uint x) public{
        if (x == 0) { return; }
        maxlength = x;
       addressArray.length = 0;
       addressArray = new uint[](maxlength);
    }
    function getlength() public constant returns (uint) {
        if (names > 0) {
            return names;
        } else {
            return minlength;
        }
    }
    function getAddresses() public view returns(address[]){
        return addresses;
    }
    function getAddressAt(uint index) public view returns(address){
        return addressArray[index];
    }
    function getArraylength() public view returns(uint){
        return addressArray.length;
    }
    function test() public{
        if (namelength > 0) {
            return;
        } else {
            names ++;
        }
    }
}



pragma solidity ^0.8.0;
contract A {
    function set(uint x) public {
        if (x < 26) {
            namelength = x;
        } else {
            namelength = 26;
        }
    }

    function get() public
