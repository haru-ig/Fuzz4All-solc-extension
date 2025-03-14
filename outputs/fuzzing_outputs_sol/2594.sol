pragma solidity ^0.8.0;
contract Caller {
    address public fallbackAddress;
    address public fallbackAddress2;
    constructor() {
        fallbackAddress = 0xcafebabe1111111111111111222222e56262628;
        fallbackAddress2 = 0x1000111112222222b3333333333ff0c2b3ff3433333333333334a5475f100;
    }
    function setAddress() public {
        fallbackAddress = fallbackAddress2;
    }
    function fallbackDataReceiver() public {
        bytes32[] memory data;
        data.push(bytes32(uint256(address(this))));
        fallbackAddress.delegatecall(data);
    }
    function setAddress2() public {
        fallbackAddress2 = fallbackAddress;
    }
    function fallbackMutatedReceiver() public {
        bytes32[] memory data;
        data.push(bytes32(uint256(address(this))));
        fallbackAddress.delegatecall(data);
    }
}
