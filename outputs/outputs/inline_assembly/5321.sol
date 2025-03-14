pragma solidity ^0.8.0;
uint64 constant init = 1;
contract QBTest {
    struct QBFinal {
        uint256 final;
    }
    QBFinal q;
    constructor() public {
        q.final = 0;
    }
    function update() public {
        q.final += q.final;
    }
    receive() external payable {
        q.final++;
    }
}


pragma solidity ^0.8.0;























}
pragma solidity ^0.8.0;

contract QBTest is BaseExample {
    uint64 public internal constant uint64_max = 2**64 - 1;
    uint256 internal constant uint256_max = 2**256 - 1;

    uint256 private internal constant MILLIS_PER_100_NANO = 50;
    uint64 private internal constant uint64_max_minus_1_minus_1 = 50;

    modifier protectedBy(address guard) {
        require(msg.sender == guard, "QBFinal: caller does not have the correct access level");
        _;
    }


    constructor() {
