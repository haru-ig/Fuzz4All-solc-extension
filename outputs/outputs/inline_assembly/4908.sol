pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
    struct mutated {
        uint a;
    }
	bytes32 public data;
    function add1() public {
        data = keccak256
        (
            abi.encodePacked(data, bytes1(1))
        );
    }
}
