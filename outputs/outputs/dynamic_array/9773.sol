pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        string foo;
    }

    struct DataArray {
        string values[1];
        uint arraylength;
    }
    function fTest(Data[] storage ds, DataArray memory d) public pure {
        Data[] memory new_;
        new_[0] = d.values[0];
        ds = new_;
        d.arraylength = d.arraylength + 1;
    }
}
