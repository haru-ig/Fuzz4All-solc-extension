pragma solidity ^0.8.0;
contract Mutate3 {
    uint256 public immutable x;
    uint256 state;
}

pragma solidity ^0.8.0;

contract Array is Mutate2 {
    address[] private y;
    mapping(uint256 => uint256) private z;
    constructor() {
        push(1);
        push(2);

        push(4321);
    }
    function push(uint256 a) public {
        uint256 size = y.length;
        y[size] = address(this);
        y.push(a);
        z[a] = z[a] + 1;
        emit Added(a);
    }
    function pop() public {
        require(y[0] == address(this));
        uint256 value = y.pop();
        emit Removed(value);
        delete z[value];
    }
    function valueOf(uint256 index) public view returns (uint256) {
        return y[index];
    }
    function indexOf(uint256 a) public view returns (uint256) {
        for (uint256 i = 0; i < y.length; i++) {
            if (a == y[i]) {
                return i;
            }
        }
        return -1;
    }
    function size() public view returns (uint256) {
        return y.length;
    }
    function getSize() public view returns (uint256) {
        return y.length;
    }
    function get(uint256 a) public view returns (uint256) {
        return y[a];
    }
    function getSize(uint256 a) public view returns (uint256) {
        return y.length;
    }
}






pragma solidity ^0.8.0;


library library {
    /**
     * Gets the minimum value of two uint256 values.
     *
     * @param a - a 256-bit value
     * @param b - b 256-bit value
     * @dev Reverts if `c > b`.
