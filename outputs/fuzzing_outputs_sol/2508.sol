pragma solidity ^0.8.0;
contract MistakingWriteStorage {
  uint256 public storageValue;
  function write(uint256 x) public pure {
    storageValue = x;
  }
}
pragma solidity ^0.8.0;
contract Contract1 {
  bool public flag = false;
  function contract1() public pure {}
}

pragma solidity ^0.8.0;
contract Contract2 {

  bool public flag = false;
  function contract2() public pure {}
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Caller {
  function call() public payable {


    new Contract1();

    new MistakingWriteStorage();
  }
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Contract {
  function contract() public pure {

    address contract2Addr;
    contract2Addr = address(new Contract2());

    byte[1] memory data;
    contract2Addr.call(data);
  }
}
pragma solidity ^0.8.0;
