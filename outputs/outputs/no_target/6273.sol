pragma solidity ^0.8.0;
contract MyContract {
    address internal addr;
    function getAddress(address _from) public pure returns (address) {
        if (checkmsg(_from, addr)) return address(_from);
        return(addr);
    }
    function checkmsg(address _from, address _to) public pure returns (bool) {
        if (_from == _to) return true;
        return false;
    }
}

```
