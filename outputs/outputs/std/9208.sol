pragma solidity ^0.8.0;
contract NoMutatingContract {
    uint256[] public array;
    mapping(bytes32 => uint256) public map;
    uint256 public constant my_value = 444;
    constructor() {}
    function createArray() public view_only returns (uint256[]) {
        return array;
    }
}

pragma solidity ^0.8.0;
contract MaxArray {
    uint256[] a;
    uint256 maxLength;
    uint256 public my_value = 879;
    constructor() {
        maxLength = 0x300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
        for (uint i = 0; i <= maxLength; i++) {
           uint256 _i = i;
            a.push(_i);
        }
    }
    function set(uint256 i, uint256 _index) public view_only returns (uint256) {
        a[_index]= _index;
        return a[_index];
    }
    function get(uint256 i) public view_only returns (uint256) {
        return a[i];
    }
    function getMaxIndex() public view returns(uint256){
        return maxLength;
    }
}
