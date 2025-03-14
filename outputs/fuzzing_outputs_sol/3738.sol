pragma solidity ^0.8.0;
contract Example8 {
    function add(uint x, uint y) public view returns (uint) {
        x += 1;
        return x - y;
    }
    function subtract(uint x, uint y) internal pure returns (uint) {
        y -= 1;
        return x - y;
    }
    function addThenSubtract(uint z) public payable {
        uint x = add(2, z);
        uint y = subtract(x, x);
    }
}
contract TestERC20Interface {
    constructor(address _tokenAddress) public {}
    function balanceOf(address _owner) public view returns (uint _balance);
}
contract TestERC20 implements TestERC20Interface {
    constructor(address _tokenAddress) public {
        tokenAddress = _tokenAddress;
    }
    function balanceOf(address _owner) public view returns (uint _balance) {
        return ERC20Interface(tokenAddress).balanceOf(_owner);
    }
    address tokenAddress;
}
contract Example8MutatedContract {
    address testAddress = 0xC675250b04D366eD722e6d2efC4526844992aEb3;
    Example8 testExample;
    TestERC20 testERC20;
    address public tokenAddress;
    address public fallbackAddress;
    address public receiverAddress;
    bytes4 receiveFunction = bytes4(keccak256("receive(uint256,bytes)"));
    bytes4 transferFunction = bytes4(keccak256("transfer(address)(uint256)"));
    bytes4 transferFromFunction = bytes4(keccak256("transferFrom(address,address,uint256)"));
    bytes4 transferETHFunction = bytes4(keccak256("transferETH(address)"));
    bytes4 ethFunction = bytes4(keccak256("eth()"));
    bytes4 callFunction = bytes4(keccak256("call(address,bytes)"));
    bytes4 delegateFunction = bytes4(keccak256("delegate(address,bytes)"));
    bytes4 delegateCallFunction = bytes4(keccak256("delegateCall(address,bytes)"));
    event CallException(address sender, bytes received);
    event TransferException(address sender, address received);
    event TransferFromException(address sender, address received);
    event TransferETHException(address sender, address received);
    event EthException(address sender, address received);
    constructor() {
        testERC20 = new TestERC20(0);
        testExample = new Example8();
        fallbackAddress = msg.sender;
        tokenAddress = new TestERC20(testAddress);
