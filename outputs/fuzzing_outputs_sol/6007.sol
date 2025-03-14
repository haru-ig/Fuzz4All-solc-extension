pragma solidity ^0.8.0;
contract FallbackExample {

    address public fallback;

    address public contractForEther;

    address public contractForEth;

    function () external payable {
        uint amount = msg.value;
        receiveEther(amount);
    }
    receiveEther();
    receiveEth();
    receiveEther0();
    receiveEther1();
    receiveEther2();

    function receiveEther(uint) public virtual { }
}
contract Caller {
    address[] memory addrs = [address(uint256(100))];

    function f(uint) public { addrs[0].transfer(address(this).balance - 1 ether); }
    receiveEther(uint);
    receiveEther0();
}
contract NoFallback {
    function () external { revert(); }
    receiveEther0();
}
