pragma solidity ^0.8.0;
interface IERC20Extension {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function increaseAllowance(address spender, uint256 addedValue) external returns (bool);
    function decreaseAllowance(address spender, uint256 subtractedValue) external returns (bool);
}
```
## 3. Solidity VS Ethers

- Both contracts are defined on the Ethereum blockchain.
    - This means that they will never share data.
    - The ERC20 interface that we used on the previous page is a more flexible version of the one used by Ethers. This contract does not share data with the others.
- Both contracts accept and return tokens in a very similar way
    - The two contracts above use Ethers:
        - We can send arbitrary tokens with `transfer` and `increaseAllowance`/`decreaseAllowance`.
        - We can increase and decrease the allowance of any account with `increaseAllowance`/`decreaseAllowance`.
        - We can retrieve the balance of a particular account with `balanceOf`.
    - The ERC20 contract works the other way around:
        - We can deposit the Ether and call any functions on the same contract. This can be done directly on the blockchain with `transfer`.
        - We can request a specific amount of a particular Token with `allowance` and `increaseAllowance`/`decreaseAllowance`.
        - We can find the token balance of any account with `balanceOf`.

To check how much Ether is in your wallet, you can run the following script.

```solidity
contract ERC20Example {
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable { }

    function totalSupply() public view returns (uint256) {
        return balanceOf(owner);
    }

    function balanceOf(address account) public view returns (uint256) {
