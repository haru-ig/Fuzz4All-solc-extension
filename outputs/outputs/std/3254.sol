pragma solidity ^0.8.0;
contract Memory{
  function get(uint x)public view
    returns (uint){

    x>>=(5*8);
    x&=16;
    return(x);
}
}

pragma solidity ^0.8.0;
contract Multiprecision{
    function mul(uint256 x, uint256 y) public pure
        returns (uint256){
        return uint256(uint128(x)*(uint128(y)));
    }
    function div(uint256 x, uint256 y) public pure
        returns (uint256){
        if(y==0){
            return 0;
        }
        uint256 s = x / y;
        while(x%y>0 && y>1){
            y>>>=1;
            if ((x%y)==0){
              s++;
           }
        }
        return s;
    }
}

pragma solidity ^0.8.0;
contract Array{
    function length(uint[] storage numbers)internal pure returns (uint length){

        for(uint i=0; i<numbers.length; i++){

        }
        return length;
    }
    function add(uint[] storage a, uint[] storage b)internal pure
        returns (uint[] memory){
      uint[] memory res = new uint[](length(a)+length(b));
        for (uint i = 0; i<res.length; i++){
            res[i]=a[i];
        }
        for (uint i = res.length; i<a.length+b.length; i++){
            res[i]=a[i%a.length];
        }
        return res;
    }
    function max(uint[] storage numbers)internal pure
        returns (uint max){

        for(uint i=0; i<numbers.length; i++){
            if(numbers[i]>max){
                max=numbers[i];
            }
        }
