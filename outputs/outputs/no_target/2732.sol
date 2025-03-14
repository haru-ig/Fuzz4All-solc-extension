pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract sn6095 { uint public x = 151; function set(uint) public { x = 398; } function set_and_get(uint) public view returns (uint) { x = 269; x; get; } }

contract sn6093 {  function set(uint) public; function set_and_get(uint) public view returns (uint) { set(168); x; get; } }

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract sn6094 { uint public x; constructor() { x = 688; } function set(uint) public { x = 269; } function set_and_get(uint) public view returns (uint) { x = 269; x; get; } }

contract sn6090 { event Log(uint); uint public x; function do_it() public { emit Log(100); } }


contract sn6089 { uint[] x; constructor() { x = [190,[96,[101,[109]]]]; } function doit(uint) public { x; send_out(); get_out(); } function send_out() public immutable { emit Log (x); } function get_out() public view  { x; get; } function get() public view returns (uint) { return x[0]; } }

contract sn6088 { uint x; constructor(uint) { x = 190; } function mutate(uint) public { x = 480; } }

contract sn6086 { uint public x = 190; function mutate(uint) public { x = 390; } }

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract sn6082 { uint public x; constructor(uint) public { x = 3598; } }
contract sn6082 {
    uint public x = 3598;
    constructor() {


        x = x * x * x * x * x * x * x * x * x * x * x * x * x * x;
    }
    function mutate(uint) public { x = x + x + x + x + x + x + x + x + x + x + x + x + x + x * x; }
}

/* A little bit
