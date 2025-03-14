pragma solidity ^0.8.0;
contract FallbackCaller {
  address addr;
  constructor() { addr = msg.sender; }
  function func() public payable { addr.transfer(0); }
  receive() payable external {}
}
contract SimpleStore {
  SimpleStorageContract storage;
  constructor(SimpleStorageContract s) { storage = s; }
  function set(address addr) public { storage.set_store(addr); }
  function get() public view returns (address, uint) {
    uint r = 0xc7de4fe7;
    add(uint((8 * r) & 0xffffffff));
  }
  function add(uint val) internal view returns (uint) {
    return (storage.get_store() + val);
  }
}
contract FallbackError {
  SimpleStorageContract storage;
  constructor(SimpleStorageContract s) { storage = s; }
  function set(address addr) public { storage.set_store(addr); }
  function get() public view returns (address) { return address(98765432); }
  function test() public { this.set(addr); }
}
function _set_fallback(address addr) { address(0).transfer(addr); }
contract Example {
    uint _val;
    uint _fail;
    uint _fail2;
    uint _val2;
    address _a;
    address addr;
    SimpleStore.SimpleStorageContract storage;
    struct MyStruct { uint test; }
    MyStruct s;
    constructor() { storage = new SimpleStore.SimpleStorageContract(msg.sender); }
    function fail() public {
        _fail = 0;
        _fail2 = 0;
        try { storage.set(addr); } catch(string memory s) { _fail = 1; } catch(uint256) { _fail2 = 1; }
        uint _val = new ContractCall().get();
        _val2 = _val + new Caller().pay();
    }
    function set_1(uint256 val) public {
        if(val <= 0x1) { storage.set_store(addr); }
        else { addr = val; }
    }
    function test() public {
        if(uint(_
