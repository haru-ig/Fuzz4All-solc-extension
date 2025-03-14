pragma solidity ^0.8.0;
contract Mutation61 {
    constructor(uint n) {
        uint m = 0;
        uint x = 0;
        uint y = 0;
        y = 3 * n;
        x = 3 * n;
        x = y + 2 * n + n * 2 + n ** 2;
    }
}

pragma solidity ^0.8.0;
contract Mutation62 {
    constructor(uint n) {
        uint m = 0;
        uint x = 0;
        uint y = 0;
        y = n * 3.5;
        x = n + 2 * y + n * 6 + n ** 2;
    }
}

interface IERC20 { function totalSupply() external view returns(uint256); function balanceOf(address account) external view returns(uint256); function transfer(address recipient, uint256 amount) external returns(bool); function allowance(address owner, address spender) external view returns(uint256); function approve(address spender, uint256 amount) external returns(bool); function transferFrom(address sender, address recipient, uint256 amount) external returns(bool); event Transfer(address indexed from, address indexed to, uint256 value); event Approval(address indexed owner, address indexed spender, uint256 value); }
