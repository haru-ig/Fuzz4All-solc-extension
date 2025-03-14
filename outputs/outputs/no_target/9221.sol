pragma solidity ^0.8.0;
library ImmutableUtils {
    function uintTo128(uint256 _uint) internal pure returns (uint128) {
        require(_uint < type(uint128).max, "contract internal uint overflow");
        uint128 value = uint128(_uint);
        require(value <= type(uint128).max, "contract internal integer overflow");
        return value;
    }
}
contract ImmutableUtilsMutated {
    function uintTo128(uint256 _uint) internal view returns (uint128) {
        return uintTo128(_uint);
    }
}
contract ImmutableUtilsCheck {
    function uintTo128(uint256 _uint) internal view {
        uintTo128(_uint);
    }
}
contract WrapperContract {
    ImmutableUtils immutableUtils;

    constructor(ImmutableUtils iUtils) { immutableUtils = iUtils; }
}

contract mutatedImmutableUtils {
}
