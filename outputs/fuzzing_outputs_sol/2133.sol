pragma solidity ^0.8.0;
contract Mutater25 {
    constructor(address _address) {
        address[] memory addresses;
        addresses.push(_address);
    }
    modifier addresses(address[] memory _addresses) {
        _addresses.push(address(this));
        yield addresses;
    }
    modifier addAddress(address _address) {
        addAddresses(new address[](3));
    }
    function getArrays(address[] memory _addresses) public returns (address[]) {
        for(uint8 i = 0; i < _addresses.length; i++) {
            getAddresses(_addresses[i]);
        }
        return new address[](3);
    }
    function addAdress2(address _address) public returns (address[] memory) {
        addAddresses(new address[](3));
        return _address == array[2]?new address[](3):new address[3];
    }
}
 pragma solidity ^0.8.0;
 contract Caller {
    uint amount;
    address public a;
    constructor(address _a) {
        address[2] memory addresses;


        a = _a;
    }
    function getAddressAddresses() public view returns(address) {
        return a;
     }
    modifier a(address _a) {
        address[2] memory addresses;
        addresses.push(address(a));
        _a = _a;
    }
    function call(uint _amount) public payable {

        a.call.value(msg.value)((_amount + 1).toHexString());
    }
    function call2(uint _amount) public returns(uint _amount) {
        a.call((_amount + 5).toHexString());
        return 10;
    }
    function call3(uint _amount) public returns(uint _amount) {
        a.call{(uint storage _amount)}("");
        return 15;
    }
    function call4(uint _amount) public returns(uint) {
        a.call((address(this).call{value : (_amount + 4)}("")));
        return 20;
    }
    function call5(uint _amount) public returns(uint) {
        unchecked {
            a.call{(uint storage _amount){unchecked{return (unchecked(unchecked(unchecked(0))))}}}("");
        }
        return 25;
    }
    function getAddress() public view returns(address) {
        address[2] memory addresses;
