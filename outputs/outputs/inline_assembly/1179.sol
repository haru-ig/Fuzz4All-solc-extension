pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ModifiedEquivalentProgram {
    bytes32 constant X = '101';
    bytes32 x;
    bool executed;
    constructor() public {
      x = X;
    }
    modifier onlyIfExecuted {
        executed = true;
        _;
    }
    bool public isExecuted;
    function execute() public onlyIfExecuted {
        executed = true;
    }
}
contract EquivalentToTheSameProgram {
    bytes32 constant X = '110';
    bytes32 x;
    bool executed;
    constructor() public {
      x = X;
    }
    modifier onlyIfExecuted {
        executed = true;
        _;
    }
}
contract EquivalentToXPlus1 {
    bytes32 constant X = '111';
    bytes32 x;
    bool executed;
    constructor() public {
      x = X;
    }
    modifier onlyIfExecuted {
        executed = true;
        _;
    }
}
contract EquivalentToTheNewProgram {
    bytes32 constant X = '1110';
    bytes32 x;
    bool executed;
    constructor() public {
      x = X;
    }
    modifier onlyIfExecuted {
        executed = true;
        _;
    }
    bool public isExecuted;
    function execute() public onlyIfExecuted {
        executed = true;
    }
}
contract YulTester {
    bytes32 private constant MY_PRIVATE_KEY = <KEY>';
    bytes32 constant X1 = '25'; /* A constant, should be declared here using 'byte[] memory private' */
    bytes32 private constant X1_MEMORY_VAR_PRIVATE_KEY = bytes32(uint256(keccak256(abi.encodePacked('X1'))));
    bytes32 constant X1_MEMORY_VAR = 0xc0ffee71ef;
    bytes32 constant X1_MEMORY_VAR_MEMORY_KEY = bytes32(uint256(keccak256(abi.encodePacked('0x0'))));
    // bytes32 private constant X1_MEMORY_VAR_MEMORY_KEY = bytes32(X1_MEMORY_VAR);
    bytes32 constant X1_MEMORY_VAR2_PRIVATE_KEY = bytes32(uint256(keccak256(abi.encodePacked('X1_MEMORY_VAR'))));
    bytes32 constant X1_MEMORY_VAR2 = 0xb0ffee;
    bytes32 constant X1_MEMORY_
