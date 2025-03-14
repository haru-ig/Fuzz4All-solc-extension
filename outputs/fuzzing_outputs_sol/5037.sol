pragma solidity ^0.8.0;
contract Simple {
    uint256 public constant a = 0x0;
    function mutate() public pure returns(uint256) {
        return 0x0;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
address payable receiver;
uint256[] memory data;
contract Caller {
    Simple internal s = Simple(0);
    constructor (uint256 _arg) public {
        data.push(_arg);
    }
    function use() public {
        receiver.transfer(msg.value * data[1]);
    }
    function fail() public {
        if (0.1 ether + (uint256(uint256.div(callDataToString(abi.decode(msg.data, (bytes memory)))))) % 3 == 0) {
            revert(callDataToString(abi.decode(msg.data, (bytes memory))));
        } else {
            (uint256 val, ) = abi.decode(msg.data, (bytes32, uint256));
            if (val % data[1]!= 0) revert("data mismatch");
        }
    }
    function receive() public payable {
        (uint256 val; ) = abi.decode(msg.data, (bytes32, uint256));
        data[1] += 1;
        data.push(val);
    }
    function callDataToString(bytes memory x) public pure returns (bytes memory b) {
        assembly {
            b := mload(add(x, 32))
        }
    }
}
