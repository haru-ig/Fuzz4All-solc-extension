pragma solidity ^0.8.0;
abstract contract AbstractEIP712Caller {

    address public addr;

    constructor(address _addr) public {
        addr = _addr;
    }
    modifier onlyCaller() {
        require(
            msg.sender == addr,
            "caller must be the admin contract"
        );
        _;
    }

    modifier onlyCallerAndTransfer() {
        _;
        bool sent;
        if (msg.value!= 0) {
            sent = false;
            Interface(addr).call{value: msg.value}("");
        }
    }

    function sendEther(uint256 _wei) public virtual returns (bool) {
        return Interface(addr).call{value: _wei}("");
    }

    function changeEther(uint256 _wei) public virtual onlyCallerAndTransfer {
        assert(
            Interface(addr).call{value: _wei}("")
        );
    }
}
using Address = address;
using Address payable = payable;
using SafeMath = ^8.0.0;
contract Caller is AbstractEIP712Caller {
    address payable admin;
    mapping(address => bool) payers;
    uint96 public refunds;
    uint96 public returnsCount = 99;
    AbstractCallWithFallback.function callWithFallback;
    constructor(address _admin) public {
        require(
            _admin!= address(0),
            "Zero address"
        );
        admin = address(_admin);
    }
    function setCall(AbstractCallWithFallback.function _call_) public {
        require(
            (address(callWithFallback) == address(0)) &&
            (_call_!= address(0)),
            "Call has already been set"
        );
        require(
            admin == msg.sender,
            "msg.sender must be the admin contract"
        );
        callWithFallback = _call_;
    }
    function startCall() public onlyCallerAndTransfer {
        require(
            (address(callWithFallback)!= address(0)) &&
            (address(callWithFallback).isContract == true),
            "Call has not been set"
        );
        uint wei = IERC20(address(this)).balanceOf(address(this));
        require(
            wei >= callWithFallback.getAmountToCall(),
            "Not enough wei in contract"
        );
        callWithFallback(bytes memory());
    }
    function withdrawRefund() public onlyCaller {
        if (refunds[payers[msg.sender]] > 0) {
            uint256 amount = refunds[payers[msg.sender]];
            (bool sent, ) = payable
