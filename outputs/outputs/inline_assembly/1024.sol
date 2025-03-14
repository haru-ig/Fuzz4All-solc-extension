pragma solidity ^0.8.0;
contract FirstGeneration {
  address payable public payableSender;
  uint[5] memory arr;

  constructor(address payableSender) public {
    arr[0] = 137;
    arr[1] = 128;
    arr[2] = 777;
    arr[3] = 22141;
    arr[4] = 2323232323;


    arr = [1, 2, 3, 1, 2];








    this.payableSender = payableSender;
  }
}

provider/1
pragma solidity ^0.8.0;
contract InitialGeneration {
  uint[] memory arr;


  constructor() public {
    arr = [128, 137, 123, 777, 2323232323];
  }
}

pragma solidity ^0.8.0;
contract InitialGeneration {
  uint[5] memory arr;
  uint[5] memory prev;


  constructor() public {

    prev = [128, 137, 123, 777, 2323232323];

    for (uint i = 0; i < arr.length; i++) {
      prev[i] = prev[i] * 2;
    }
  }
}
/*
