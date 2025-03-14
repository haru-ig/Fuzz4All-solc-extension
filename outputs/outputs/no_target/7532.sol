pragma solidity ^0.8.0;
contract Mintable {
    mapping(address => uint) public balanceOf;
    constructor() public { }
    function mint(address _to, uint _amount) public returns (bool) {
        if (_to!= address(0)) {
            require(balanceOf[_to] < 9, 'Balance exceeds limit. Limited to 9.');
            balanceOf[_to] = uint(_amount);
        }
        return true;
    }
}
