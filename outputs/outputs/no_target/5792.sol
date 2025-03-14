pragma solidity ^0.8.0;
interface Bar {
    function setfoo(address _foo) external;
    function setfoo(string calldata _foo) external returns (bytes memory);
}

pragma solidity ^0.8.0;
import "./Foo.sol";
contract C {
    address public account1;
    address public account2;
    constructor() public {
        account1 = msg.sender;
        account2 = msg.sender;
        setBar(address(new Foo()));
    }
    function setBar(address bar) public { account2 = bar; setfoo(bar); }
    function setfoo(address _foo) public { msg.sender.call{value:100000 ether}(abi.encodePacked("address(this).setFoo(address(_foo))")); }
    function () public payable { }
    function check() public {
        (uint8 ret, bytes memory log) = Bar(bar).setfoo.value(10 ether)(abi.encodePacked(address(this).setfoo(address(bar)))));
        if (ret!= 0){ revert(bytes(log)); }
    }
}
