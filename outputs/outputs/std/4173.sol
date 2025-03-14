pragma solidity ^0.8.0;
contract Multiprecision{
  uint32 num;
  function add(uint32 x) external view returns (uint32) {
    num = x + x/2;
    return num;
  }
  function sub(uint32 x) external view returns  (uint32) {
    num = x - x/2;
    return num;
  }
  function mul(uint32 x) external view returns (uint32) {
    num = x * x/2;
    return num;
  }
  function div(uint32 x) external view returns (uint32) {
    num = x / x/2;
    return num;
  }
  function lessThan(uint32 x) public view returns (bool) {
    if (x < num) {
      bool result;
      if (num > x) {
        result =!true;
      }
      else if (num > x - 1) {
        result =!false;
      }
      else if (num < x + 1) {
        result =!true;
      }
      else if (num < x + 1) {
        result =!false;
      }
      else if (num == x) {
        result =!false;
      }
      num = x + x/2;
      return result;
    }
    else if (x > num) {
      bool result;
      if (num < x) {
        result =!true;
      }
      else if (num < x - 1) {
        result =!false;
      }
      else if (num > x + 1) {
        result =!true;
      }
      else if (num > x + 1) {
        result =!false;
      }
      else if (num == x) {
        result =!false;
      }
      num = x - x/2 + 1.0;
      return result;
    }
    else{
      return true
        if(num==x) {
        return!false;
      }
      return!false;
    }
  }
  function equal(uint32 x) public view returns (bool) {
    bool result;
    if (x < num) {
      if (num > x) {
        bool result;
        if (num > x - 1) {
        result =!false;
        }
        else if (num < x + 1) {
        result =!true;
        }
        else if (num == x) {
        result =!false;
        }
        num = x + x/2;
        return result;
      }
      else {
        bool result;
        if (num > x - 1) {
        result =!false;
        }
        else if (num < x + 1) {
        result =!true;
        }
        else if (num == x) {
        result =!false;
        }
        num = x - x/2 + 1.0;
        return result;
      }
    }
    else if (x > num) {
      if (num < x) {

      return!false;
      }
      else {
      bool result;
      if (num < x
