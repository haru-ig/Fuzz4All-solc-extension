pragma solidity ^0.8.0;
interface FallbackMutater {
    function mutate() public payable;
}
import "./Mutater7.sol";
contract FallbackMutaterMutator7 is Mutater7, Mutater7.FallbackMutater {
    uint mutatedResult8;
    uint256 public constant MAX_INCREMENT_AMOUNT = 10;
    uint256 public constant SLEEP_DELAY = 30 seconds;
    constructor(address _address) Mutater7(_address) {
        contractAddress8 = _address;
    }
    function mutate() public payable {
        mutatedResult8++;
        uint currentAmount = msg.value;
        if (currentAmount < MAX_INCREMENT_AMOUNT) {
            msg.value = (currentAmount << 1);
            return;
        }
        uint incrementedAmount = 0;
        for (; incrementedAmount < MAX_INCREMENT_AMOUNT; incrementedAmount++) {
            msg.value = (currentAmount << 1);
            await sleep(SLEEP_DELAY);
        }
        emit IncrementAmountResult(msg.sender, currentAmount);

        _checkFallback();
    }
    function _checkFallback() internal {
        require(msg.data.length == 0 || (keccak256(abi.encodePacked(msg.data))!= 0));
    }
}

pragma solidity ^0.8.0;
contract CallerMutatorTest is FallbackMutaterMutator7 {
    function CallerMutatorTest() FallbackMutatorMutator7() {}
    function getReturnAddress8() public view returns (address) {
        return returnAddress8;
    }
    uint256 public incrementedAmount = 0;
