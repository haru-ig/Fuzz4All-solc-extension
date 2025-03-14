pragma solidity ^0.8.0;
contract Locker {
    string public contractAddress;
    string public txHash;
    uint256 public timeStamp;
    function logTransactionHash(string calldata _contractAddress, string calldata _txHash, uint _timeStamp, bool _hasBeenUsed) public {
        contractAddress = _contractAddress;
        txHash = _txHash;
        timeStamp = _timeStamp;
    }
    function logUsedTxHash(string calldata _contractAddress, uint _hashUsed, uint _timeStamp) public {
        contractAddress = _contractAddress;
        timeStamp = _timeStamp;
    }
    function getTxHashUsed() public view returns (uint) {
        return uint(keccak256(abi.encode(contractAddress, txHash, timeStamp)));
    }
}



pragma solidity ^0.8.9 ;

import "./IERC20.sol";
import "./Ownable.sol";

contract BasicToken is IERC20, Ownable {
    uint256 totalSupply_;

    mapping(address => uint256) balances_;

    mapping(address => mapping(address => uint256)) allowances_;

    event Transfer(address indexed from, address indexed to, uint256 value);


    function totalSupply() public view virtual override returns (uint256) {
        return totalSupply_;
    }


    function balanceOf(address account) public view virtual override returns (uint256) {
        return balances_[account];
    }


    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
