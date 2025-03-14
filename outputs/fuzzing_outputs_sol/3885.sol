pragma solidity ^0.8.0;
contract Example4{
    function callMe(address _to, bytes memory _data) public payable returns (address result) {
        bytes memory emptyData = bytes(0);
        (bool success, ) = _to.call{value: msg.value}(emptyData);
        if (success) {
            reverted;
        }
    }
}
