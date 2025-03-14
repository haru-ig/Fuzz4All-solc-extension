pragma solidity ^0.8.0;
interface IExample4 {
    function a() external;
    function b() external view returns(address payable);
}
contract Example4 is IExample4{
    address public to = msg.sender;
    event Transfer(address indexed from, address indexed to, uint value);
    uint public value = 0;
    method() external {
        address payable from = msg.sender;
        from.transfer(value);
    }
    function a() public {
        (bool, bool) = payable(to).call{value: value}(abi.encode(this.b.selector));
        emit Transfer(msg.sender, msg.sender, value);
    }
    function b() public view returns(address payable) {
        return payable(to);
    }
}
