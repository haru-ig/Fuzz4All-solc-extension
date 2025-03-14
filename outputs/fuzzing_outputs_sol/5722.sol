pragma solidity ^0.8.0;


import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract TestReentrancyGuard is Initializable, ReentrancyGuard {
    bytes32 private constant _FORWARD Solidity = "ReentrancyGuard: forward not allowed";
    bytes32 private constant _BACKWARD Solidity = "ReentrancyGuard: backward not allowed";

    constructor() {
        __ReentrancyGuard_init();
    }

    function __ReentrancyGuard_init() internal initializer {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal initializer {
        _ __ReentrancyGuard_init_unchained_body();
    }

    function __ReentrancyGuard_init_unchained_body() internal initializer {
        require(__ReentrancyGuard_init_unchained_body_body(), _FORWARD);
    }

    function __ReentrancyGuard_init_unchained_body_body() internal initializer {
        require(_NOT_NONCE_TOOK_BODY(), _BACKWARD);
        _;
    }

    function _NOT_NONCE_TOAK_BODY() internal pure returns (bool) {
        return block.number > block.coinbase &&!block.hasTransaction &&!block.gasLimit;
    }
    uint40 constant nonce1 = uint40(768987656);
    uint40 constant nonce2 = uint40(769012348);
    uint public executed;
    uint256 public executed2;

    function test() public {
        executed = 0;
        try testReentrancy();
        {
            executed2 = executed;
            testReentrancy();
        }
        assertEqual(executed, executed2, "Wrong value");
    }

    function testReentrancy() public {
        require(reentrancyGuard(), "ReentrancyGuard");

        assertEqual(executed, nonce1, "Incorrect 1st reentrancy");
        executed = executed + 1;

        assertEqual(executed, nonce1 + 1, "Incorrect 2nd reentrancy");
    }

    function assertEqual(uint expected, uint compare, string memory message) internal pure returns (bool){
        return expected == compare;
    }

    function reentrancyGuard() public nonReentrant {
        bytes[] memory testValues;
        testValues.push("2" );
        testValues.push(abi.json(bytes(uint(1929479454)))));

        for (uint i = 0; i < testValues.length; ++i) {
            testReentrancy(testValues[i]);
        }
    }
}
