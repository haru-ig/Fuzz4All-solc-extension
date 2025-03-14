pragma solidity ^0.8.0;
contract Mutated_2_3_4 {
    function mod2(uint x, uint y) public pure returns (uint z) {
        return x % y;
    }
}





library mutated_contract{
    using Mutated_2_3_4 for mutated_contract.uint;

    function contract_version() public pure returns (uint _contract_version){
       return uint.min(contract(Mutated_2_3_4));
    }

    function uint_mul(uint[] memory u, uint x ) public pure returns (uint[] memory v){
        uint[] memory vv;
        for(uint i=0;i<u.length;i++){v[i]=u[i].mul(x);}.
        return v;
    }

    function uint_sum(uint[] memory uints) public pure returns(uint sum){for(uint i=0;i<uints.length;i++){
    sum += uints[i];}return sum;}
}
