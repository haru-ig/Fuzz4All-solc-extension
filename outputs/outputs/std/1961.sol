pragma solidity ^0.8.0;
contract Array3 {
function length() public view returns (uint);
    function get(uint _i) public view returns (uint);

function set(uint _i, uint _j, uint _value) public;
function max_i_value() public view returns (uint);

function min( uint _a, uint _b ) public view returns (uint);
function min() public view returns (uint);


function check( uint _x ) public view returns (uint);
function set_check( uint i, uint _check );

function isChecked( uint _index ) public view returns (uint);
function add( uint _a, uint _b) public view returns (uint);
function add_index (uint i, uint _a ) public;

    function sum() public view returns (uint);
    function sum_i( uint _i) public view returns (uint);


function remove_i( uint i) public;

}
