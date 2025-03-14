pragma solidity ^0.8.0;
contract MyContract {
    function test() internal pure {}
    address payable f;
    address payable g = f;
    uint256[] s;
    uint256 c;
    constructor (address payable _m) {
        require(_m!= address(0), "Address is 0");
        f = _m.sendValue(1000);
    }
    function setAddress(uint _n) public {
        assert(msg.sender == f);
        f.transfer(s[_n]);
    }
    function setAddresses(uint _n) public {
        f.transfer(s[_n]);
    }
}
