pragma solidity ^0.8.0;
contract DoNothingVairable {
    address private _address;
    constructor() public {
        _address = msg.sender;
    }
    address public getAddress() public view returns (address) {
        return _address;
    }
}
pragma solidity ^0.8.0;
contract Main {
    using DoNothing for uint256;
    using DoNothingVairable for address;
    function getUIntValue() public view returns(uint256) {
        return this.balance;
    }
    function getAddress() public view returns(address) {
        return this.msg.sender;
    }
    function main() public {
        getUIntValue();
        getAddress();
    }
}
