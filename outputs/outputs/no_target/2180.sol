pragma solidity ^0.8.0;
contract Modifications2_SEM8 {
    constructor(uint256 _x) public {
        a = _x;
    }
    function f() public returns (uint256) {
        return uint256(a > 0? 0 : a);
    }
    uint public a;
}

pragma solidity ^0.8.0;
contract Modifications1_SEM8 {
    constructor(uint256 _x) public {
        a = _x;
    }
    function f() public returns (uint256) {
        return uint256(a > 0? a + a : uint160(-2147483648));
    }
    uint public a;
}
contract Ownable {
  address public owner;
  address public address0 = 0x91fc81ab25987e1fa23878ae823987f2b8dc580c;
  function claim(uint wad) public {
    IERC20(address0).transfer(wad, msg.sender);
  }
  function claimall(address[] calldata list) public {
    for (uint i = 0; i < list.length; i++) {
      claim(uint(list[i]));
    }
  }
  uint256 gasleft ;
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  constructor () public {
    owner = msg.sender;
  }
  modifier onlyOwner()  {
      require(msg.sender == owner);
      _;
  }
  function transferOwnership(address newOwner) public onlyOwner {
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

  modifier onlyPremined() {
    uint gasleft_premined = gasleft;
    _;
    revert("onlyPremined: caller has insufficient GAS");
    gasleft = gasleft_premined;
  }

  modifier onlyPremined0() {
    uint gasleft_premined0 = gasleft;
    _;
    revert("onlyPremined0: caller has insufficient GAS");
    gasleft = gasleft_premined0;
  }
}
contract Modifications40_SEM8 is Ownable {
    modifier only0toEight()  {
      require(block.number < 9);
      _;
 	}
    function mod(uint a, uint b) public view returns (uint c) {
