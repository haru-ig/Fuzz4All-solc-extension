pragma solidity ^0.8.0;
interface Interface {
    function getContract() public view returns (address);
    function transfer(address _to, uint _amount) public;
    function call() public;
    function send(uint _amount, bytes memory _data) public;
}
contract Caller {
    Interface2 public instance;
    Interface public interface;
    address public from;
    uint public amount;

    constructor () {
        from = msg.sender;
        amount =  1 ether;
    }
    modifier onlyValidCall {
        requires(amount >= 0.01 ether);
        _;
    }
    modifier onlyCaller {
        _;
        if (from!= interface.getContract()) {
            bytes memory data = abi.encodeWithSelector(interface.getData.selector, amount);
            throw;
        }
    }
    function callWithFallback(address target, bytes memory data) public virtual override onlyValidCall {
        interface.transfer(from, amount);
        require(address(instance) == target);
        target.call{ value: amount }(data);
    }
    function callData(address target, bytes memory data) public virtual override onlyValidCall {
        interface.transfer(from, amount);
        target.call{ value: amount }(data);
    }
    function callWithReceiveFallback(address target, bytes memory data) public virtual override onlyValidCall {
        interface.transfer(from, amount);
        assembly { delegatecall(add(code, 0x20), add(data, 0x20), 0, 0, mload(data), 0) }
    }

}
