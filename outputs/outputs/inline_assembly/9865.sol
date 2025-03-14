pragma solidity ^0.8.0;
interface SemanticsMismatchXulMutantInterface {
    function g() external;
}
contract SemanticsMismatchXulMutantContract {
    constructor (SemanticsMismatchXulMutantInterface _xulInterface) {

    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        address _iXUL;
        assembly {
            _iXUL := 0xb82c80abac4180593b3b0f54498c16a58cc59e25
