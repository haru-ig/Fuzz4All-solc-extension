pragma solidity ^0.8.0;
library Array {
  struct ArrayInfo { uint len ; bool isSigned ; uint min ; uint max ; }


  ArrayInfo[] public arrayInfo;

  function setArrayInfo(uint _len, bytes2 _isSigned, uint _min, uint _max) public {
    bool isArrayInit = false ;
    for(uint i=0; i<arrayInfo.length; i++){
      if(uint(arrayInfo[i].len) == _len){
        arrayInfo[i].isSigned = _isSigned;
        arrayInfo[i].min = _min;
        arrayInfo[i].max = _max;
        isArrayInit = true;
        break ;
      }
    }
    if(!isArrayInit){
      arrayInfo.push(ArrayInfo(_len,_isSigned,_min,_max));
    }
  }

  function getArrayInfo(uint i) public view returns (uint,bytes2, uint, uint){
    ArrayInfo x = arrayInfo[i];
    return (x.len, x.isSigned, x.min, x.max);
  }

  function sortArray(uint[] memory a) public view returns (uint[] memory){
    uint i ; uint j ;
    uint len = a.length ;

    for (i=1; i<len ; i++) {
      if (a[i - 1] > a[i]){
        j = i ;
        i = j ;
        j = i - (i < len/2) ;
        Array.swap(a,j,i);
      }
    }
    return a ;
  }

  function swap(uint[] memory a, uint i, uint j) public  {
    uint ai = uint(a[i]) ;
    uint aj = uint(a[j]) ;
    a[i] = j ;
    a[j] = ai ;
    sortArray(a);
  }


  function signWithBytes(bytes calldata b) public view returns (uint){
    uint offset = 32*128 ;
    uint mask = 0xff00000000000000 ^ uint(uint128(~mask)) ;
    uint mask16 = 0xff00 ^ uint(uint128(~mask)) ;
    return (uint(uint256(b[0])&mask) + (uint128(uint256(b[1])) & mask16)) >> 64 ;
  }


  function verifyWithBytes(bytes calldata b) public pure returns (bool){
    uint offset = 32*128 ;
    uint mask = ~uint(uint128(0)) ;
    uint mask16 = ~uint(uint128(0)) ;
    return (uint(uint256(b[0])&mask) & (uint128(uint256(b[1
