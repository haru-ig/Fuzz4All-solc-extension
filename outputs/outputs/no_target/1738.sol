pragma solidity ^0.8.0;
import "./Mutate0014.sol";
contract Mutate0016 {
    address _a;
    address immutable _A;
    uint _n = 0;
    constructor() public {
        _A = address(uint160(uint(_n)/2)));
    }
    function modifyAddress(address a) public {
        _a = a;
        emit modify(_a);
    }
    function modify2Address(uint b) public {
        _a = address(uint160(uint(uint(b)/2)));
        emit modify(_a);
    }
    function modify3Address(uint _n) public {
        _n = uint(uint(_n)/2);
        _a = address(uint160(uint(uint(uint(_n)/2))/2)));
        emit modify(_a);
    }
}
