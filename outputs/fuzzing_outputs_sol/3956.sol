pragma solidity ^0.8.0;
contract Example20 {
  fallback function() pure public {
    throw(1);
  }
}
