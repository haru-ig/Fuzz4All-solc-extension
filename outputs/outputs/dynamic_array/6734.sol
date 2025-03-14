pragma solidity ^0.8.0;
contract T10FC_call_data_array2 {
  constructor() public {
    val = 6;
    addresses = new address[](1);
    addresses[0] = msg.sender;
    empty3[0][0] = 7;
    empty4[0][0] = 7;
  }
  function test() public view returns (uint, address[]) {
    require(val == 6, 'T10FC_call_data_array5');
    address[] memory addresses1 = new address[](1);
    addresses = addresses1;
    addresses[0] = msg.sender;
    return (val, addresses);
  }
  function test2() public {
    addresses = new address[](1);
    addresses[0] = msg.sender;
    uint[16][16] memory empty4_ = new uint[1][1];
    empty4_ = new uint[1][1];
    empty4[0][0] = 7;
    uint[16][16] memory empty3_ = empty4_;
    empty3[0][0] = 7;
    uint memory val1;
    (val1, ) = test();
    require(val1 == 7, 'T10FC_call_data_array10');
  }
  function test3b() public view returns (uint, string memory) {
    var a = msg.sender;
    return (7, 'a');
  }
  function test3c() public returns (uint, string memory) {
    var a = msg.sender;
    return (7, 'a')
  }
}
