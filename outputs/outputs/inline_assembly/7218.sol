pragma solidity ^0.8.0;
contract IERC20token2 {
    function totalSupply() virtual public view returns (uint) {
        return 0;
    }
    function balanceOf(address) virtual public view returns (uint) {
        return 0;
    }
    function totalSupply(address) virtual public view returns (uint) {
        return 0;
    }
    function balanceOf(address, address) virtual public view returns (uint) {
        return 0;
    }
    function transfer(address to, uint wadValue ) virtual public returns (bool) {
        return false;
    }
    function approve(address spender, uint256 wadValue) virtual public returns (bool) {
        return false;
    }
    function allowance(address owner, address spender) virtual public view returns (uint256) {
        return 0;
    }
}


pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20Token.sol';

contract ERC20Contract is ERC20Token{
    constructor(){
        mint(msg.sender, 1200000*10**18);

    }

    function mint(address _to, uint256 _value) public {
        grantRestricted(_to,_value,"");
    }

    function grantRestricted(address restrictedTo, uint256 restrictedAmount, string memory _reason) public virtual returns (bool) {
        if (restrictedTo == msg.sender) {
            _transfer(address(this), restrictedTo, restrictedAmount, _reason);
            return true;
        } else {
            transfer(restrictedTo, restrictedAmount);
            return true;
        }
    }
}
