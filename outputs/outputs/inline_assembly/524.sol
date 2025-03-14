pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalenty3 {
    constructor(address _address, uint _amount) external payable {
        emit NewContract(_address);
        emit Log0(_address);
        deposit();
        _address.transfer(2);
    }
    event NewContract(address _contract, uint _amount);
    event Log0(address _contract);
    event Log(address _contract);
    function deposit() public payable  {
        emit Log(address(this), msg.value, "yes");
        emit Log0(address(this));
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalenty4 {
    constructor(address _address, uint _amount) external {
        emit NewContract(_address);
        emit Log0(_address);
        address ret;
        (_amount,ret,) = (_address,msg.value);
        emit Log(ret);
        address.call{value:msg.value}((_amount,ret,) = (_address,2));
        emit Log(ret);
        address.call{value:1}((ret,) = (_address,2));
    }
    event NewContract(address sender);
    event Log0(address sender);
    event Log(address sender);
}
