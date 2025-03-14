pragma solidity ^0.8.0;
interface IERC20Receiver {
    function onTokenTransfer(address token, address from, address to, uint256 tokens) external;
}
contract MyToken is IERC20, Ownable {
    uint public totalSupply_{x} = 300000000 * (10 ** 9);
    mapping(address => uint256) public balanceOf_{x};
    mapping(address => mapping(address => uint256)) public allowance_{x};
    string public constant name_{x} = "MyToken";
    string public constant symbol_{x} = "MYTKN";
    uint8 public constant decimals_{x} = 0;

    event Transfer{
        address indexed from{x};
        address indexed to{x};
        uint256 tokens{x};
    }

    event Approval{
        address indexed owner{x};
        address indexed spender{x};
        uint256 tokens{x};
    }

    constructor(){
        totalSupply_ += 200000000 * (10 ** 9);
        balanceOf_[owner_{x}] = 200000000 * (10 ** 9);
    }

    function approve(address spender, uint256 tokens) external{
        require(ownerOf(spender_{x}) == owner_{x}, "approve: caller must own the spender{x}");
        allowance_{x}[owner_{x}][spender_{x}] = tokens;
        emit Approval{
            owner: owner_{x},
            spender: spender_{x},
            tokens: tokens{x}
        };
    }

    function transfer(address to, uint256 tokens) external returns (bool){
        super.transfer(to, tokens);

        balanceOf_[owner_{x}] -= tokens;
        balanceOf_[to_{x}] += tokens;

        emit Transfer{
            from: owner_{x},
            to: to_{x},
            tokens: tokens{x}
        };

        return true;
    }

    function totalSupply() external view returns (uint256){
        return totalSupply_{x
