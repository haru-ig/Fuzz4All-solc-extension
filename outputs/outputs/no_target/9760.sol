pragma solidity ^0.8.0;
interface IToken {
    uint256 amount;
    function transfer(uint256 _amount)external;
}

pragma solidity ^0.8.0;
import { IToken } from "./IToken.sol";
contract TokenWrapper{uint amount=0;address payable _owner;uint new_amount=0;constructor(){_owner = payable(message.sender);amount=1;}function test(){IToken(address(this)).transfer(msg.value);new_amount=0;}function set(uint _amount){amount=_amount;}function get(){return amount;}function subtract(){new_amount=new_amount.sub(amount);amount=0;}function add(){new_amount=new_amount.add(amount);}function reset(){amount=0;new_amount=0;}constructor(){_owner = payable(address(this));}mapping(address=>uint)balanceOf;mapping(address=>address)allowed;function setallowance(address _spender, uint _value)external returns(bool success){allowed[_spender] = _value;return true;}function approve(address _spender, uint _value)external returns(bool success){IToken(address(this)).transferFrom(msg.sender, _spender, _value);allowed[_spender] = _value;return true;}function transferfrom(address _spender, uint _value)external returns (bool success){IToken(address(this)).transferFrom(msg.sender, _spender, _value);allowed[_spender] = allowed[_spender].sub(_value);IToken(address(this)).transfer(_spender, _value);return true;}function transferto(address payable _to, uint _value)external {IToken(address(this)).transfer(_to, _value);amount=_value;}function()external payable {IToken(address(this)).transfer(msg.sender, msg.value);amount=amount.add(msg.value);if(amount>new_amount)new_amount=new_amount.sub(amount);amount=0;}
