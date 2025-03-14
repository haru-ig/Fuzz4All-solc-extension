pragma solidity ^0.8.0;
interface Proxy {
    function getUnderlying(address) external view returns (address);
}

pragma solidity ^0.8.0;
contract Test {

    address[] public staticAddresses;



    bytes32[] public bytes32Array;


    function sumBytes32Array(bytes32[] memory b) public {



        if (b.length > 65535) {
            bytes32[] memory newB = new bytes32[](b.length + 5);
            assembly { mstore(newB, append(b, mload(add(b, 65535)))) }
            selfdestruct(newB[65535]);
            assembly { mstore(b, newB) }
        }
        bytes32[] memory newB = new bytes32[](65535);
        assembly { mstore(newB, b) }
        bytes32[] memory concatB = new bytes32[](65535 + b.length);
        assembly { mstore(concatB, newB, concat(b[0], b[1], b[2], b[3], b[4], 0)) }
        bytes32[] memory resultB = new bytes32[](1 + b.length);
        assembly { mstore(resultB, concatB) }

        bytes32Array = resultB;
    }


    modifier restricted() {
        address a = msg.sender;
        bool allowed = true;
        if (msg.sender == address(42)) {
            allowed = false;
        } else if (allowed == false) {

            uint x = 844;
            address y = 0xDEADBEEF;
            address z = 0xCAfeF00D;
            _;
            assembly { mstore(0xabcd, x) }
            assembly { mstore(0xabcd, 1024) }
            assembly{ mstore(0xabcd, y) }
            assembly
