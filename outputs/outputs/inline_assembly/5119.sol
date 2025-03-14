pragma solidity ^0.8.0;
contract C {
  address payable public to;
  uint public counter;
  constructor(address payable payee) public {
    to = payee;
  }

  function mutatedCounter() external returns (uint) {
    counter = 10;
    return counter;
  }

  function checkCounter() external returns (uint) {
    return counter;
  }
}








use super::*;





use std::collections::BTreeMap;
use std::iter;














#[derive(Debug, Clone, PartialEq)]
pub struct TypedParams {

  pub struct_abi: StructAbi,











  pub params: Vec<ParamAbi>,
}






#[derive(Debug, Clone, PartialEq)]
pub struct ParamValue {

  pub param: ParamAbi,

  pub param_type: ParamType,
