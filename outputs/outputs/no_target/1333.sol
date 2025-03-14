pragma solidity ^0.8.0;
contract Owned_0002 {
    function isOwner_01_0003() public pure returns (bool) {
          return true;
    }

    function getAddress_01_0003() public pure returns (address) {
          return msg.sender;
    }

    function setOwner_02_0003(address _newOwner) public {
          require(isOwner_01_0003());
          owner_ = _newOwner;
    }
}
contract Destroyed_0102 {
    function setAddress_01_0004(address _newOwner) public {
        owner = addOwner(_newOwner);
    }

    function addOwner(address _newOwner) pure returns (address) {
          return _newOwner;
    }
}
contract Transferable_0022 {
    event BeforeOwner(
        address indexed _previousOwner,
        address indexed _currentOwner
    );

    event OwnerChanged(
        address indexed _previousOwner,
        address indexed _currentOwner
    );

    function setAddress_01_0005(address _newOwner) public {
          emit BeforeOwner(address(0), owner);
          owner = _newOwner;
          emit OwnerChanged(address(0), _newOwner);
    }
}
contract Destroyed_0102 {
    function addOwner(address _newOwner) pure returns (address) {
          return msg.sender;
    }

    address owner;
}
contract Mutable_0011 {








    modifier onlyOwner() {
          require(msg.sender == owner);
          _;
    }

    event BeforeTransfer(
        address indexed _previousOwner,
        address indexed _newOwner
    );

    event OwnerChanged(
        address indexed _previousOwner,
        address indexed _currentOwner
    );

    function addOwner(address _newOwner) pure returns (address) {
          return msg.sender;
    }

    address owner;
}
contract Mutate_0004 {
    function setAddress_01_0005(address _newOwner) public {
          emit BeforeTransfer(address(0), owner);
          require(msg.sender == owner);
          owner = _newOwner;
          emit OwnerChanged(address(0), _newOwner);
    }
}
contract Destroyed_0102 {
    function setAddress_01_0004(address _newOwner) public {
        owner = addOwner(_newOwner);
    }

    function addOwner(address _newOwner) pure returns (address) {
          return _newOwner;
    }
}
contract Transferable_0022
