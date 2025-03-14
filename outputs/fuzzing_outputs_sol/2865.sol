pragma solidity ^0.8.0;
contract Foo {
    fallback() external payable {
    }
}

pragma solidity ^0.8.0;


interface IERC20Interface {

    event transfer(address indexed from, address indexed to, uint256 value);
    event approve(address indexed owner, address indexed spender, uint256 value);
    event transferFrom(address indexed from, address indexed to, uint256 value);

    function totalSupply() external view returns(uint256);
    function balanceOf(address who) external view returns(uint256);
    function allowance(address owner, address spender) external view returns(uint256);

    function transfer(address to, uint256 value) external returns(bool);
    function approve(address spender, uint256 value) external returns(bool);
    function transferFrom(address from, address to, uint256 value) external returns(bool);

    function mint(address to, uint256 amount) external;
    function redeem(address to, uint256 amount) external;
}

contract Foo is IERC20Interface {
    event Burn(address indexed from, uint256 value);

    IERC20Interface internal constant _token = ERC20("Foo Dai");

    function() external payable {
        IERC20Interface(to).transferFrom(msg.sender, this, msg.value);
        emit Burn(msg.sender, msg.value);
    }

    function totalSupply() external view override returns(uint256) {
        return address(this).balance;
    }

    function balanceOf(address _owner) external view override returns(uint256) {
        return _token.balanceOf(_owner);
    }

    function allowance(address _owner, address _spender) external view override returns(uint256) {
        return _token.allowance(_owner, _spender);
    }

    function burn(uint256 amount) public {
        uint256 balance = balanceOf(msg.sender);
        require(amount <= balance);
        _token.burn(msg.sender, amount);
        _token.transfer(msg.sender, balance);
        emit Burn(msg.sender, amount);
    }

    function burnFrom(address _account, uint256 amount) public {
        uint256 balance = balanceOf(_account);
        require(amount <= balance);

        IERC20Interface _token = IERC20Interface(to);
        _token.transferFrom(_account, owner(), amount);
        IERC20Interface(to).transfer(_account, amount);
        balance = balanceOf(_account);
        _token.burn(_account, balance);
        _token.transfer(_account, balance);

        emit Burn(msg.sender, balance);
    }

}
