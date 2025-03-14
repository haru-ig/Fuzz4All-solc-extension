pragma solidity ^0.8.0;
contract Test50000 {
    struct Test50000_struct {
        uint[] _data;
    }
    constructor () public {}

    function setTest(uint[] memory data_in, uint data_in_value) public {
        data[data_in_value] = data_in_value;
    }
    fallback () external {
        uint[] memory _tmp_data;
        _tmp_data.length++ ;
        data_tmp[data_value++] = data_value++ ;
    }
    event f (uint[] memory _d);
    uint data_value;
}
