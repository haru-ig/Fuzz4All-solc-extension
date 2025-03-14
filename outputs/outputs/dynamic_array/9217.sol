pragma solidity ^0.8.0;
contract semanticEquivalent_b_Copy_NoMutation {
    function semanticEquivalentNoMutation(uint[] memory first, uint[] memory second)
    public
    pure
    returns (uint)
    {
        uint[] memory result = new uint[](first.length + second.length);
        System.arraycopy(first, 0, result, 0, first.length);
        System.arraycopy(second, 0, result, first.length, second.length);
        return result.length;
    }
}


"use strict";

const { encodeFunctionCall, decodeFunctionResult } = require("ethereum-waffle");

const _0 =
  "0x4759655c8937f56f189dd2865772046a3efdf6c7a277508485ca5cb801b9df93";

function calldataToHash(functionSignature, var_1) {
  const args = encodeFunctionCall(functionSignature, var_1);
  return args;
}

const { encodeAbi } = require("ethereum-waffle");
const { concat } =
  require("ethereumjs-util").concat;

function functionToHash(functionSignature, var_1) {
  const args = encodeAbi("function", functionSignature, [var_1]);
  return args;
}









function calldataToFunctionCallData(fnName, var_1, var_2, var_3, var_4, var_5) {
  const fnSig
