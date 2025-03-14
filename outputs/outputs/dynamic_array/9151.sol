pragma solidity ^0.8.0;
import IErc20 for address;
contract ERC223_SimpleERC223 {
    function transfer(address _recipient, uint256 _amount) public {

        emit Transfer(address(0), _recipient, _amount);
    }
    function transferFrom(address _from, address _to, uint256 _amount) public {

        emit Transfer(_from, _to, _amount);
    }
}
