pragma solidity ^0.8.0;
contract Test {
	 function set(uint x) public returns (uint){ k = 5; return x + 1; }
    function get() public returns (uint, uint){ return (k, 0); }
}

pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function set(uint256 x) { k = x; }
   function get() public { if(k >= 2 ** 256){ panic('bad'); } }
}
