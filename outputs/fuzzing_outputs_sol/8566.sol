pragma solidity ^0.8.0;
contract CallerExample19 {
    mapping(address => uint) balances;
    function balanceOf(address addr) public view returns(uint) {
        if(balances[addr]!= 0){
            return balances[addr];
        } else{
            return 0;
        }
    }
    function subtract(uint x, uint y) public pure returns (uint z) {
        if(y == 0){
            revert();
        }
        return x / y;
    }
}
