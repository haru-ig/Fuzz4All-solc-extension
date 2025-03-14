pragma solidity ^0.8.0;
import "../IERC20.sol";
interface IERC223 {
    function transfer(address _from,address _to, uint256 _value) external returns (bool);
    function approve(address _spender, uint256 _value) external returns (bool);
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

contract Multiprecision is IERC20, IERC223 {
    constructor() {
        __IERC20_init();
        __IERC223_init();
        totalSupply_ = 0;
    }

    function totalSupply() public virtual override view returns (uint256) {
        return totalSupply_;
    }

    uint256 public totalSupply_;

    function __IERC20_init() internal pure {
        __ERC20Mintable_init();
    }

    function __token_check() internal view virtual {
        require(balanceOf(msg.sender) > 0, "ERC20: transfer from the zero address");
    }

    function _mint(address to, uint256 amount) internal virtual {
        totalSupply_ += amount;
        IERC20(to).transferFrom(address(this), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        totalSupply_ -= amount;
        IERC20(from).transfer(address(0), amount);
    }

    function _transfer(address from, address to, uint256 value) internal virtual {
        __token_check();
        __token_check();
        IERC20(from).transferFrom(from, to, value);
        IERC20(to).transfer(to, value);
    }

    function _approve(address owner, address spender, uint256 value) internal virtual {
        IERC20(owner).approve(spender, value);
    }
}
{% endhighlight %}

For this problem to work properly, the previous contract needs to be attached to the Morgan contract. I have modified this method on the Morgan contract:

{% highlight javascript %}
import "Remix/chainlink-solc-0.5.sol";

contract Morgan is IController{
...
    constructor(bytes32 name, bytes32 symbol, address accountAddress) public {
      ...
        abiSetCode(abi.encodeWithSignature("initialize()"), accountAddress, abi.encodeData('', abi.encodeWithSignature("init();")));

    }
...
{%
