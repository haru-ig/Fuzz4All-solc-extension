pragma solidity ^0.8.0;
contract Mutate0015b {
    uint256 public result;
    mapping(bool => uint256) private data;
    constructor() {
        data[true] = 1;
        data[false] = 2;
    }
    modifier m() {
        data[true] = data[true] + 1;
        data[false] = data[false] + 2;
        _;
    }
    function callMe() m public {
      assert(data[true] == 3);
      assert(data[false] == 4);
    }
    function use() public {
      result = data[false];
    }
}
