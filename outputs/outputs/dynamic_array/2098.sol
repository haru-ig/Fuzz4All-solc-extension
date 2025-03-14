pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_5{
    uint256 val;
    uint256[] public arr;
    uint256 idx;
    constructor() public {
        array[idx] = val;
    }
    function set(uint a, uint b, uint c) internal returns(uint256  ) {
        arr[idx] = 0;
        arr[0] = a;
        arr[1] = b;
        return arr[idx];
    }
}
pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_4{
    uint256 val;
    uint256[] public arr;
    uint256 idx;
    constructor() public {
        array[idx] = val;
    }
    function set() internal returns(uint256  ) {
        arr[idx] = 0;

        array[1] = val;
    }
}
pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_3{
    uint256 val;
    uint256[] public arr;
    uint256 idx;
    constructor() public {
        array[idx] = val;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    function set() internal returns(uint256  ) {
        arr[idx] = array[0];
    }
}
pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_2{
    uint256 val;
    uint256[] public arr;
    uint256 idx;
    constructor() public {
        array[idx] = val;
    }
    function set() internal returns(uint256  ){
        array[0] = 0;
    }
}
pragma solidity ^0.8.0;
