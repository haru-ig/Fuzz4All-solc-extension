pragma solidity ^0.8.0;
contract CallerMutated {
    address payable _addr1;
    mapping(uint => uint) private _map;
    constructor(address payable addr1) { _addr1 = addr1; }
    function write(uint key, uint value) public { _map[key] = value; }
    receive() external payable { _addr1.send(msg.value); }
    function get(uint key) public view returns (uint) { return _map[key]; }
    function check() public view { require(msg.value > 0, "no weirdo"); }
}
