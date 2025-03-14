pragma solidity ^0.8.0;
contract P13 {
  function i() pure public returns(uint) {
    return (1) + (2);
  }
}

pragma solidity ^0.8.0;
contract P14 {
  function i() pure public returns (uint ret) {
    return ret * 7;
  }
}

pragma solidity ^0.8.0;
contract P15 {
  function i() pure public returns (uint ret) {
    return ret > 0? "ret == 0": ret + 4;
  }
}

pragma solidity ^0.8.0;
contract P27 {
  function j() pure public returns(uint) {
    return 1;
  }
}


contract P16 {
  address payable x = payable(address(0));

  function f() public returns(uint) {
    return x.balance;
  }
}
