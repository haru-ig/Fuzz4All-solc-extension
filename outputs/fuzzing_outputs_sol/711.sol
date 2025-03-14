pragma solidity ^0.8.0;
contract Caller {
    address payable addr;
    function setAddr(address payable newAddr) public {
        addr = newAddr;
    }
    function func() public {
        if (addr.sendValue(address(this).balance))
            addr.call{ value: address(this).balance }("");
    }
}
