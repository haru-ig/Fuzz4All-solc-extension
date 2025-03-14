pragma solidity ^0.8.0;
contract Arrays {
    uint public constant S = 2;
    uint public constant M = 9;
    uint public constant E = 8;
    uint public constant N = 4;
    uint public constant T = 3;
    uint public constant V = 10;
    uint public constant l = 10;
    uint public value2_ = 0;
    address[] public all_ = new address[](2);
    mapping(uint => address) public all_;
    function modify() public { this.all_:=[address(all_[S][0]),address(all_[S][1])] }
}
