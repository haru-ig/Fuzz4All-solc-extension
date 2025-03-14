pragma solidity ^0.8.0;
contract A is B {
    modifier onlyB() {
        require(msg.sender == address(B(address(this))), "Only B can call");
        _;
    }
    function a() public {
        aInternal();
    }
    function aInternal() public payable onlyB {
        b();
    }
    function b() public {
        aInternal2();
    }
    function aInternal2() public payable onlyB {
        bInternal();
    }
    function bInternal() public onlyB {
        B(address(B(address(this)))));
    }
}

pragma solidity ^0.8.0;
contract Caller {
    bytes32 public message;
    constructor() {
        msg.data;
        msg.data;
        message = "foo";
    }
    function call() external pure returns (bytes32) {
        if (msg.value > 0) msg.data = message;
        msg.data;
        return msg.data;
    }
}

contract FallbackTest is Caller {
    function __fallback() public payable {}
}
contract Hello{
    function printEosTokenInfo(address token) public view{
        B bContract = new B();
        A aContract = new A();
        uint256 aBalance = aContract.aBalance();
        B bBalance = aContract.bBalance();
        if (token == address(0x000000000000100000000000000000000000000)) {
            printBalance("address(0)", bBalance, aBalance);
            printBalance("address(0)", address(this).balance, address(bContract).balance);
        }
        else if (token == address(0x00000000000040000000000000000000000000)) {
            printBalance("address(this)", address(bContract).balance, bBalance);
            printBalance("address(this)", address(0).balance, address(this).balance);
        }
        else {
            printBalance("0", address(0).balance, bBalance);
            printBalance("0", address(this).balance, address(bContract).balance);
        }
    }
    function printBalance(string memory, uint256, uint256) public pure {
        if (balance == 0) {
            balance--;
        }
        uint256 toBePrinted = balance;
        while (toBePrinted!= 0) {
            balance--;
            to
