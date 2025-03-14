pragma solidity ^0.8.0;
contract Caller4 {
    function newFallback() payable external {
        (bool _success, ) = _address.call{value: 1 ether _address}(new bytes {});
        require(_success, "Fallback has not worked");
    }
}
