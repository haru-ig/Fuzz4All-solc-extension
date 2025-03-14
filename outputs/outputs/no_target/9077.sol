pragma solidity ^0.8.0;
contract mutators_v10_v2 {
    using Math for uint;
    constructor(uint _value, uint _i) public {
        array_v10v[_i]=_value;
    }
}

pragma solidity ^0.8.0;
library Math {
    function div(uint dividend, uint divisor) internal pure returns (uint) {
        return dividend / divisor;
    }
}
contract mutators_v10_v2_3 {
    uint[30] array_v10v;
    uint number_v10v;

    function equivalent1() public {}
    constructor(uint _value, uint _i) public {
        array_v10v[_i]=_value;
        number_v10v=_i;
    }
}
