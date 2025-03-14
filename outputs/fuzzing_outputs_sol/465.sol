pragma solidity ^0.8.0;
contract MutatedCaller {
    uint mut count;
    function () external payable {}
    function call(address addr) external payable {
        bytes memory data;
        assembly {
            data := mload(0x40)
        }
        count++;
        (bool success, ) = addr.call{value: msg.value}{data};
        if (!success ) revert( "Failed call" );
    }
}
