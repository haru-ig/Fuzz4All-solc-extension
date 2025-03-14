pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 {
    constructor() public {
        dynamic memory d = new uint256[](1000000);
    }
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        arr[idx] = val;
        return idx+1;
    }
}
contract C{
    A a;
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        arr[idx] = val;
        return idx+1;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_6 {
    constructor() public {
        A a;
    }
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        arr[idx] = val;
        return idx+1;
    }
}
contract A {
    A(uint a) public;
    function set(uint256[] arr, uint idx, uint v) internal view returns(uint) {}
}
contract B is A {
    constructor(uint a_) public A(a_) { }
    function set(uint256[] storage arr, uint256 idx, uint v) internal view returns(uint) { arr[idx] = v; return addr(this).code; }
}
contract E is A {
    function set(uint256[] storage arr, uint256 idx, uint v) internal view returns(uint) {
        arr[idx
