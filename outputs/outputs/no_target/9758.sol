pragma solidity ^0.8.0;
interface IToken {
    using SafeMath for uint256;
    event Transfer(address indexed from,address indexed to,uint amount);
    event Approval(address indexed owner,address indexed spender, uint amount);
}
