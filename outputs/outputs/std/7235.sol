pragma solidity ^0.8.0;
contract Arrays {
  function test(uint[] memory x, uint [] memory y) public pure {
    uint[] memory arr = new uint[](x.length + y.length);
    for (uint i=0; i<x.length; i++) {
      arr[i] = x[i];
    }
    for (uint i=0; i<y.length; i++) {
      arr[x.length+i] = y[i];
    }
    uint[] memory x1 = new uint[](arr.length);
    for (uint i=0; i<arr.length; i++) {
      x1[i] = arr[i];
    }
    uint i = x1.length-1;
    while (i > 0 && x1[i-1] >= x1[i]) i--;
    x1[i] = x1[i-1];
    x1[0] = 0;
    x1[x1.length-1] = 0;
    for (i=1; i<x1.length; i++) {
      if (x1[i-1]!=x1[i]) break;
      x1[i] = x1[i-1];
    }
    x1[x1.length-1] = x1[x1.length-1];
    if (i == 1) {
      if (x1[x1.length-1] % 2 == 1) {
        x1[x1.length-1] = 0;
      } else {
        x1[x1.length-1] = 1;
      }
    }
    uint [] memory arr2 = new uint[](x1.length);
    for (uint j=0; j<x1.length; j++) {
      arr2[j] = x1[j];
    }
    if (i==0 && (arr.length!= arr2.length || arr[0]!= arr2[0])) revert();
    if (i==0 && arr.length!= arr2.length) {
      for (uint j=0; j<arr.length; j++) {
        if (arr2[j]!= arr[j]) revert();
      }
    }
    if (i==0) arr2 = arr;
    if (x1.length!= arr2.length) {
      if (x1.length == 1) x1[x1.length-1] = 1;
      else x1[x1.length-1] = 0;
    }
    while (true) {
      uint [] memory arr3 = new uint[](arr2.length);
      for (uint j=0; j<arr2.length; j++) {
        arr3[j] = arr2[j];
      }
      if (i == 1) arr3 = arr;
      uint ieq = arr3.length-2;
      while (ieq>0 && arr3[ieq] < arr3[ieq+1]) ieq--;
      if (ieq==0) {
        if (x1.
