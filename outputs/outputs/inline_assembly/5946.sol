pragma solidity ^0.8.0;


import "./IERC20.sol";
import "./libraries/Address.sol";
import "./libraries/SafeMath.sol";


contract IERC20 {
    struct TransferData {
        address from;
        address to;
        uint256 value;
        uint256 nonce;

        bytes data;
    }

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    function transfer(address _to, uint256 _value) public returns(bool);
    function transferFrom(address _from, address _to, uint256 _value) public returns(bool);
    function approve(address _spender, uint256 _value) public returns(bool);
    function allowance(address _owner, address _spender) public view returns(uint256);

    uint256[20] private __gap;
}

contract Erc20Crowdsale {
    using SafeMath for uint256;

    IERC20 public token;

    uint256 public rate;
    uint public _totalSupply;
    uint public _rateNumerator;
    uint public _rateDenominator;
    uint public _rateCeil;
    uint public _rateFloor;

    constructor(
        address tokenAddress,
        uint totalSupply,
        uint rateNumerator,
        uint rateDenominator,
        uint rateCeil,
        uint rateFloor
    ) {
        token = IERC20(tokenAddress);
        rate = rateFloor;
        rateNumerator = rateNumerator;
        rateDenominator = rateDenominator;
        rateCeil = rateCeil;
        rateFloor = rateFloor;
    }

    function () external payable {}

    function burnToken(address owner, uint value) public {
        IERC20(_token()).burnFrom(owner, value);
    }

    function _token() internal view returns (address) {
        return address(token);
    }

    function safeTransferFrom(address from, address to, uint amount) internal returns (bool) {
        _transfer(from, to, amount);
        _checkSingleTransfer(from, to, amount, true);
        return true;
    }

    function safeTransfer(address to, uint amount) internal returns (bool) {
        _transfer(msg.sender, to, amount);
        _checkSingleTransfer(address(0), to, amount, true);
        return true;
    }

    function _transfer(address from, address to, uint amount) internal returns (bool) {
        (bool success, ) = IERC20(_token()).transfer(to, amount);
        require
