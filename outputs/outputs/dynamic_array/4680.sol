pragma solidity ^0.8.0;
struct StateMutated1_ {
    address payee;
    uint quantity;
    bytes32 name;
    mapping(bytes32 => uint) data;
    uint data2;
    uint data3;
    uint data4;
    StateMutated2 storage other;
}

pragma solidity ^0.8.0;
contract Test_DynamicArray_Mutated2 {

    StateMutated2[] private state_ = new StateMutated2[](10);
    uint256 private data_;
    constructor(uint256 initData) {
        data_ = initData;
    }
    function getInitialState() public view returns (StateMutated2[] memory) {
        return state_;
    }

    function getOtherState() public view returns (StateMutated2 memory, StateMutated2) {
        return (state_[3], state_[4]);
    }

    function getState() public view returns (StateMutated2 memory, StateMutated2) {
        return (state_[3], state_[4]);
    }

    function storeOtherState(StateMutated2 memory _s2) private {
        state_[4] = _s2;
    }

    function storeState(StateMutated2[] memory _s2) public {
        state_[3] = _s2[2];
    }
    function doTest1() public view returns (uint256) {
        return state_[1].quantity;
    }
    function doTest2() public view returns (uint256) {
        return data_;
    }
    function doTest4() public view returns (uint256) {
        return state_[4].quantity;
    }
    function doTest5() public view
