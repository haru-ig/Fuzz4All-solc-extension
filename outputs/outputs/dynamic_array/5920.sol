pragma solidity ^0.8.0;
contract Test33790 {
    uint[] private _data;
    function get() public view returns (uint[] memory) {
        return _data;
    }
    function set_data() public {
        _data[0] = 12;
    }
    function run() public runs(2) {
        set_data();
        set_data();
    }
}
