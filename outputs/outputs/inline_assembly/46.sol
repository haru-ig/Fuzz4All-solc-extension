pragma solidity ^0.8.0;
contract C is B {
    uint256 public x;
    function update() external onlyOwner isAdmin {
      uint256 value = _incrementNumberB();
      x = value;
    }

    function isAdmin() public view returns (bool) {

      return true;
    }
}

pragma solidity ^0.8.0;
contract testContract {
    function changeAdmin() public {
        Ownable(0).transferOwnership(admin());
    }
    address public admin;
    constructor() {
      admin = msg.sender;
    }
}


pragma solidity ^0.8.0;

interface IERC20 {
  function transfer(address recipient, uint256 amount) external returns (bool);
}


contract Ether {
    IERC20 public underlying;
    uint256 public balance;
    uint256 public _mint;
    address public mintAddress;

    constructor(address _mintAddress) {
      underlying = IERC20(_mintAddress);
      tokenURI(mintAddress);
    }

    function tokenURI(address mintAddress_) public view returns (string memory tokenURI)  {
        tokenURI = mintAddress_.toString() + "_" + underlying.name() + "_" + underlying.symbol();
    }

    function mint(uint256 amount) public {
      underlying.transfer(mintAddress_, amount);
      balance -= amount;
      _mint += amount;
    }

    function burn(uint256 amount) public {
      underlying.transfer(mintAddress_, amount);
      balance += amount;
      _mint -= amount;
    }
}
