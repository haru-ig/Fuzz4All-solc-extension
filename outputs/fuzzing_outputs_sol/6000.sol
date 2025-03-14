pragma solidity ^0.8.0;
contract Interface2 with Interface2 {
    function getData() public view returns (uint, uint){ return (2, 4); }
}
contract Caller{
    address public call1;
    Interface2 public call2;
    function Caller(Interface2 call2) public { call1 = msg.sender; this.call2 = call2; }
    function call() public payable {
        uint storedData;
        assembly {
            storedData := mload(call2.getData())
        }
        require(storedData == 2, "Data was changed!");
        EtherUtils.sendEthTo(msg.sender, storedData);
    }
}
