pragma solidity ^0.8.0;
contract Solidity {
    mapping(address=>bool) private _admins;
    mapping(address=>bool) private _moderators;
    mapping(address=>uint[]) public addr;
    mapping(address=>uint) public idx;

	constructor() public {
        addr[0x0] = [1, 2, 3];
        addr[0x1] = [1, 2];
        idx[0x0] = 0;
        idx[0x1] = 1;

        x[0] = 101;
        y[0] = 102;
        z[0] = 103;

        _admins[msg.sender] = true;
        _moderators[msg.sender] = true;
        _admins[0xf] = true;
	}
    function addr2id(uint addr) public view returns(uint) {
        uint found = addr;
        return found;
    }
    function id2addr(uint index) public view returns(uint) {
        uint addrFound = addr[index];
        return addrFound;
    }
    function addUser(uint addr) public returns(uint) {
        addr[addr] = addr + 1;
        idx[addr] = addr;
        return addr;
    }
}
