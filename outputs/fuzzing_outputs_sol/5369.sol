pragma solidity ^0.8.0;
contract contract59
{
    address addr;
    mapping(uint8 => bytes[]) map;
    uint8 key;
    uint256 len;
    address addr1;
    bytes memory data;
    constructor() public()
    {
      bytes[] memory value1;
      value1.push("hi there");
      map[key] = value1;
    }
}
contract ContractTest {
    mapping (uint8 => bool) public value;
    address testaddr;

    constructor() public
    {
      value[1] = false;
      testaddr = 0x3a93c8933c83e8d69421e3cd0c858d733693b97b;
      value[2] = true;
    }
    fallback() public payable{
      revert();
    }
    receive () public payable{
        revert();
    }
    function set(uint8 _key, addr addr1) public
    {
      value[_key] = true;
      if(_key % 2 == 0){

      }
      else{
        addr1.transfer(msg.value);
      }
    }
}
