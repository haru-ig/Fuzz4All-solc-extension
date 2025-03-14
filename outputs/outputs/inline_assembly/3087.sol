pragma solidity ^0.8.0;
contract C {
  uint public x;
  address payable public y;
  constructor() public {
    x = 12;
    y = payable(0x12);
  }
  function() external payable { x = 24; }
}

pragma solidity ^0.8.0;
interface IAddressResolver {
  function get(uint256) external view returns (address);
}
pragma solidity ^0.8.0;
contract A {
  IAddressResolver public immutable addresses;
    constructor (IAddressResolver _addresses) public {
        addresses = _addresses;
    }
    function addressOf(uint x) public view returns (address) {
        return addresses.get(x);
    }
}

pragma solidity ^0.8.0;
contract A {
  IAddressResolver public immutable resolver;
    constructor () public {
        resolver = IAddressResolver(address(0x111));
    }
    function addressOf(uint256 x) public view returns (address) {
        return resolver.get(x);
    }
    function setAddressResolver(address _newResolver) public {


        resolver = IAddressResolver(_newResolver);
    }
}

pragma solidity ^0.8.0;
contract A {
  uint256 x;
  constructor(uint256 _x) public{ x =  _x; }
  function set(uint256 _x) public{ x =  _x; }
  function get() public view returns (uint256){ return x; }
}

pragma solidity ^0.8.0;
contract A {
  uint8 public x;
    constructor () public {
        x = 0xD8;
    }
    function set(uint8 _x) public {
        x =  _x;
    }
    function get() public view returns (uint8){ return x; }
}

pragma solidity ^0.8.0;
contract A {
  uint16 public x;
    constructor() public
