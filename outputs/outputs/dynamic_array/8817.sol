pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity_arrays6Mut {
   event UpdateArrayofArrays1(uint[][] a1);
  event UpdateArrayofArrays2(uint[][] a2);
  event UpdateArrayofArrays3(uint[][] a3);
  event UpdateArrayofArrays4(uint[][] a4);
  event UpdateArrayofArrays56(uint[][] a56);
  event UpdatearrayofArraysstoUint56(uint[][] a6to12to56);
  event UpdatearrayofArrayssto12toUint56(uint[][] a12to12to56);
  event UpdatearrayofArrayssto12to12toUint56(uint[][] a12to12to12to56);

  uint[][] public arrayofArrays1;
  uint[][] public arrayofArrays_1;
  uint[][] public arrayofArrays2;
  uint[][] public arrayofArrays2_1;
  uint[][] public arrayofArrays3;
  uint[][] public arrayofArrays3_1;
  uint[][] public arrayofArrays4;
  uint[][] public arrayofArrays4_1;
  uint[] public arrayofArraystoUint56;
  uint[] public arrayofArraysto56toUint56;
  uint[] public arrayofArrays56toUint56;

  modifier setArrayofArrays1(uint[][] a1) {
    arrayofArrays1 = a1;
    emit UpdateArrayofArrays1(a1);
    _;
  }

  modifier setArrayofArrays2(uint[][] a2) {
    arrayofArrays2 = a2;
    emit UpdateArrayofArrays2(a2);
    _;
  }

  modifier setArrayofArrays3(uint[][] a3){
    arrayofArrays3 = a3;
    emit UpdateArrayofArrays3(a3);
    _;
  }

  modifier setArrayofArrays4(uint[][] a4){
    arrayofArrays4 = a4;
    emit UpdateArrayofArrays4(a4);
    _;
  }

  modifier setarrayofArraysstoUint56(uint[][] a6to12to56){
    arrayofArraystoUint56 = a6to12to56;
    emit UpdatearrayofArrays
