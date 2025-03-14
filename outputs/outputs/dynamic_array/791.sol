pragma solidity ^0.8.0;
contract Test{
    function isTrue(bool _x) pure public returns(uint) { return 1; }
}



pragma solidity >=0.8.0 <0.9.0;

abstract contract ERC20 {

    event Transfer(address indexed from, address indexed to, uint256 value);


    event Approval(address indexed owner, address indexed spender, uint256 value);
}
