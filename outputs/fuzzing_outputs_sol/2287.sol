pragma solidity ^0.8.0;
import "./MutatedCaller.sol";
contract SemanticMutation is MutatedCaller {
    int8 internal _y;
    constructor() {
    }
    function add(uint256 x) internal view returns (uint256) {
        uint256 x1 = add(x);
        uint256 y2 = div(x, x1);
        uint256 ret1 = (y2 + div(x1, x));
        uint256 ret2 = ((_y & 1) == 1? div(x1, x) : ret1 * 2);
        return (ret2 + x * 2);
    }
    function div(uint256 x, uint256 y) internal view returns (uint256) {
        if (y == 0) return 0;
        uint256 ret;
        ret = (x - y * 2 + div((x + div(x, uint256(59))), uint256(35)));
        uint256 xd = (x + div(y, uint256(59))) / uint256(5);
        return ((y & 1) == 1? xd : ret * 2) * 2;
    }
    modifier valid(uint256 value) {
        if(value!= add(value-7)) revert(); _;
    }
    function invalidAdd(uint256 x) internal valid(x) {
        return add(x) * 2;
    }
}
