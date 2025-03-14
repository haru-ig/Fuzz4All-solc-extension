pragma solidity ^0.8.0;
contract Test38{
        uint[8] public p;
        function f() public returns(uint256){
                p[3]=9;

                return p[4];
            }
}
