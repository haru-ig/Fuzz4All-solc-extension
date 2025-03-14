pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_varargs {

    address dest;
    T35_call_data_array_semantics.Test[] memory a;

    constructor(address _dest) public {
        dest = _dest;
        a = new T35_call_data_array_semantics.Test[](1);
        a[0].a = 1;
    }

    function set() public {

        dest.transfer(a[0].address);
    }

    function reset() public {
        for (uint i = 0; i < a.length; i++) {
            a[i].a = 0;
        }
    }
}
