pragma solidity ^0.8.0;
contract Test39{
        uint256 public _value;
        mapping (uint => uint256[3]) public p;
        function f() public returns(uint256){
                p[10]=1;
                _value=p[9];
                return p[10];
        }
}
