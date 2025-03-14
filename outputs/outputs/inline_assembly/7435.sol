pragma solidity ^0.8.0;
contract Equivalent_contract13_new_old {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint x;
  uint[11] memory a;
}




pragma solidity ^0.8.0;
contract TestC {
    uint public constant constant1 = 2;
    uint constant constant2 = 100;

    function getConstant1() public view returns (uint[] memory) {
        return new uint[](1);
    }
}

contract TestContract {
    address payable public payableC;
    address payable public unpayableC;
    bytes32 constant constant1 = keccak256("k");
    function getConstant1() public view returns (uint) {
        return constant1;
    }
}

contract TestC2 is Equivalent_contract13_new_new {
    uint public constant constant1 = 2;
    uint constant constant2 = 100;

    function getConstant1() public view returns (uint[] memory) {
        return new uint[](1);
    }

    constructor(address payable _address, uint _value) public {
        require(payableC == address(0),"address already set");
        payableC=_address;
        require(_address.send(_value),"Failed to send Ether");
    }
}

contract TestC3 is Equivalent_contract13_new_old {
    uint public constant constant1 = 2;
    uint constant constant2 = 100;

    function getConstant1() public view returns (uint[] memory) {
        return new uint[](1);
    }

    constructor(address payable _address, uint _value) public {
        require(unpayableC == address(0),"address already set");
        unpayableC=_address;
        unpayableC.send(_value);
    }
}
