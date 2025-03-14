pragma solidity ^0.8.0;
contract Test {
  mapping (address=>uint256) public constant constant1;
  function test1() public {
    if(!constant1.hasOwnProperty(address(this))) {
      constant1[address(this)] = 0;
    }
  }
}
contract Test {
  mapping (address=>uint256) private constant privateConst;
  function test1() public {
    if(!privateConst.hasOwnProperty(address(this))) {
      privateConst[address(this)] = 0;
    }
  }
}

pragma solidity ^0.8.0;
contract Test {
  mapping (address=>uint256) public constant constant1;
  function test1() public view returns(uint256) {
    return constant1[msg.sender];
  }
}

pragma solidity ^0.8.0;
contract Test {
  event LogBool(bool val);
  mapping (address=>uint256) private constant privateConst;
  function test1() public {
    if(!privateConst.hasOwnProperty(address(this))) {
      privateConst[address(this)] = 0;
    }
    emit LogBool(privateConst[msg.sender] == privateConst[address(this)]);
  }
}
contract Test {
  event LogUint160(uint160 val);
  mapping (address=>uint256) public constant constant1;
  function test1() public view returns(uint160) {
    return constants.uint160;
  }
}
contract Test {
  event LogUint256(uint256 val);
  mapping (uint256=>uint256) public constant constant1;
  function test1() public view returns(uint256) {
    return constants.uint256;
  }
}
contract Test {
  mapping (address=>uint256) private constant privateConst;
  mapping (address=>uint256) public constant constant1;
  function test1() public view returns(uint256) {
    return privateConst[address(this)];
  }
  function test2() public view returns(uint256) {
    return constant1[msg.sender];
  }
}
}

pragma solidity >=0.7.5 <0.8.0;

import "./Address.sol";


abstract contract AddressWrapper {
    /**
     * @dev 0x0000000000000000000000000000000000000
