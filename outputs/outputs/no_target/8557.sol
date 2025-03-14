pragma solidity ^0.8.0;
contract Solidity 0.8.0 is a breaking release of the Solidity compiler and language, introducing several new features and changes. The most notable change is that arithmetic operations are now checked by default, meaning overflow and underflow will cause a revert. This feature can be disabled locally using an unchecked block. The ABI coder v2 is also activated by default, offering more complexity and additional checks on input. Internal errors no longer use the invalid opcode, but revert with a special error message to avoid wasting gas.

The release also introduces the "Checked Arithmetic" feature, which includes three sub-features: revert on assertion failures, checked arithmetic, and unchecked blocks. The unchecked blocks allow for the disabling of checked arithmetic and re-enabling of the previous "wrapping" or "modulo" arithmetic.

Explicit conversions have been restricted to avoid ambiguities, and all conversions that were possible before are still possible, but may require two conversions.

The release also introduces several breaking changes, including the activation of ABI coder v2 by default, the removal of global functions log0, log1, log2, log3 and log4, and the disallowance of explicit conversions from negative literals and literals larger than type(uint160).max to address type.

The release recommends upgrading all code to be compatible with Solidity v0.8.0. */
