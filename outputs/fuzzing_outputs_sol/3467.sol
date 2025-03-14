pragma solidity ^0.8.0;
contract Caller {
    function transfer() public payable { }
}


pragma solidity ^0.8.0;
import './Storage.sol';
import './Caller.sol';
contract Fallback {
    address public addr;
    function payable() public {
        addr = msg.sender;
        if (msg.value > 0)
            call();
    }
    function call() public pure {
        bytes32 n = 0x43110d02;
        addr.call{value: msg.value}("");
        bytes32 x = 0x40;
        assembly {
            mstore(x, 0x00)
            mstore(add(x, 0x40), add(n, 0x00))
            mstore(add(x, 0x80), 0x00)
            mstore(add(x, 0xc0), 0x00)
            mstore(add(x, 0x10), 0x00)
            mstore(add(x, 0x14), 0x00)
        }
    }
}

address payable admin = payable(msg.sender);
bytes32[] private whitelist;
fallback() external payable {
    whitelist.push(0x12345678);
}
address payable contractAddr = payable(address(uint160(fallback())));

if (whitelist[length(whitelist) -1]!= contractAddr)
    return;

for (uint8 i = 1; ; i++) {
    admin = address(uint160(fallback()));
    contractAddr = contractAddr.send{value: i}(new bytes(0));
}
