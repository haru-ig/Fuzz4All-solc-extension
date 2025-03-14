pragma solidity ^0.8.0;
contract Mutater16{
    address _address;
    constructor(address _address) {
        this._address = _address;
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        if (_address == _address) {
            return new address[](0);
        } else {
            return new address[](1);
        }
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        if (_address == _addresses[2]) {
            return new address[](0);
        } else {
            return new address[](3);
        }
    }
    function addAdress(address _address) public returns (address[] memory) {
        if (_address == _address) {
            return new address[](0);
        } else {
            return new address[](1);
        }
    }
}
contract Mutater17{
    address _address;
    require(msg.value > 0);
    constructor(address _address) {
        this._address = _address;
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return address(new Mutater202(_address));
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        return address(new Mutater203(_addresses[2] == _address));
    }
    function addAdress(address _address) public returns (address[] memory) {
        if (_address == _address) {
            return new address[](0);
        } else {
            return new address[](1);
        }
    }
}
contract Mutater202 {
    address _address;
    constructor(address _address) {
        this._address = _address;
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        if (_address == _address) {
            return new address[](0);
        } else {
            return new address[](1);
        }
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        if (_address == _addresses[1]) {
            return new address[](0);
        } else {
            return new address[](3);
        }
    }
    function addAdress(address _address) public returns (address[] memory) {
        if (_address == _address) {
            return new address[](0);
        } else {
            return new address[](1);
        }
    }
}
contract Mutater203 {
