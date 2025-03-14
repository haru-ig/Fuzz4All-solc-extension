pragma solidity ^0.8.0;
abstract contract ERC20Basic {

    event Transfer(address indexed from, address indexed to, uint256 value);


    function balanceOf(address _address) public virtual view returns (uint256 balance);
  }





  pragma solidity ^0.8.0;

  contract Ownable is MintingProgram {
    address private _owner;
    constructor() {
      _transferOwnership(getOwnerAddress());
    }
    function getOwnerAddress() pure public returns (address _address) {
      return address(0xd7054902d0680791c4f0a47b5f880db016047385);
    }
    function setOwnerAddress(address _address) public {
      _transferOwnership(_address);
    }
    function transferOwnership(address _newOwner) public onlyOwner {
      _transferOwnership(_newOwner);
    }
    function _transferOwnership(address _newOwner) private {
      require(_newOwner!= address(0));
      _owner = _newOwner;
      emit OwnershipTransferred(_owner, _newOwner);
    }
  }



  pragma solidity ^0.8.0;
  contract MyContract is MintingProgram {
    uint internal constant INITIAL_SUPPLY = 100;
    constructor() { }
  }



  address public admin;
  address public token;

  constructor() public {
    admin = msg.sender;
  }

  function transfer(address _to, uint _value) public returns (bool) {
      bytes memory data = abi.encodeWithSelector(
      abi.decodePacked(MyContract.transfer.selector), _to, _value);
      (bool success, bytes memory _returnData) = address(token).call(data);


      require(success);
      return true;
  }
}
