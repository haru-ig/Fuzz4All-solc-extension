pragma solidity ^0.8.0;
contract Ownable is Mintable {
    address public owner;
    event Created(address indexed _owner);
    constructor() public {
        owner = msg.sender;
        balanceOf[owner] = 99999999999;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, 'only owner');
        _;
    }
    function transfer(address _to, uint _amount) public returns (bool) {
        require(_to == owner, 'Only owner can transfer!');
        Mintable(owner).mint(_to, _amount);
        return true;
    }
    function transferFrom(address _from, address _to, uint _amount) public returns (bool) {
        uint _balanceFrom = balanceOf[_from];
        uint _balanceTo = balanceOf[_to];
        require(_balanceFrom >= _amount, 'Insufficient funds from senders account!');
        require(_balanceTo + _amount <= 9, 'Balance exceeds limit. Limited to 9.');
        balanceOf[_to] = _balanceTo + _amount;
        balanceOf[_from] = _balanceFrom - _amount;
        return true;
    }
    function ownerOf(uint _tokenId) public view returns (address);
    function setOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }
}
