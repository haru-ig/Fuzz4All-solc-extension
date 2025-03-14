pragma solidity ^0.8.0;
contract Mod {
    uint256 public arr[2];
    function set(uint256 _index, uint256 _val) public {
        arr[_index] = _val;
    }
    function get(uint256 _index) public view returns (uint256) {
        return arr[_index];
    }
    function add(uint256 _val) public {
        arr[0] += _val;
    }
}

pragma solidity ^0.8.0;
contract Mutate {
    Mod public arr1;
    Modifier arrMod() {
        arr1.set(0, 10);
        arr1.set(1, 20);
        }
    function call() public {
    uint256 x = 1;
    arrMod;
    assert(x == 21);
    }
}
