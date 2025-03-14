pragma solidity ^0.8.0;
contract C3 {
    function() public payable payable {
    }
    function() public pure {
    }
    function() public {
    }
}
pragma solidity ^0.8.0;
contract C3 {
    address public x;
    modifier z {
        emit zzzz("");
        _;
    }
    function testCall(uint256 x_) public view {
        x = msg.sender;
        cxx.assertEq(0x00, x_);
    }
}
contract C2 {
    uint256 public x;
    bool public y;
    function init() public {
    }
    modifier doInit(address caller) public z {
        init();
        x = 0;
        cxx.assertEq(caller, msg.sender);
        _;
    }
    modifier doInit2(address caller) public payable doInit(caller) pure {
        init();
        y = false;
    }
}
