pragma solidity ^0.8.0;
contract TestAddress_mod {
    address addr_;
    bytes memory buf_;
    constructor() {
        buf_ = new bytes(10);
    }
    function setAddr_mod(address _addr) public {
        contract TestAddress_mod test_;
        bytes memory buf_copy = new bytes(10);
        buf_copy[2] = buf_[2];
        buf_copy[1] = buf_[1];
        addr_ = _addr;
    }
    function getAddr_mod() public view returns (address) {
        return addr_;
    }
}
