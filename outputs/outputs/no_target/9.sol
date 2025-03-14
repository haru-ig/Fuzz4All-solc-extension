pragma solidity ^0.8.0;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SimpleToken {

    address public owner;

    constructor () {
        owner = msg.sender;
    }

    function () external payable {

    }

    function balanceOf() public view returns (uint256);

    function transfer(address _to, uint _value) public {
        require(_to!= address(0));
        _transfer(msg.sender, _to, _value);
    }

    function transferFrom(address _from, address _to, uint _value) public {
        require(_to!= address(0));
        require(_value <= balanceOf(_from));

        _transfer(_from, _to, _value);
    }

    function _transfer(address _from, address _to, uint _value) internal {
        uint prevBal = balanceOf(_from);
        require(prevBal >= _value);
        _to.transfer(_value);
        emit Transfer(msg.sender, _to, prevBal-_value);
    }
}
