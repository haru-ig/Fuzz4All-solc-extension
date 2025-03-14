pragma solidity ^0.8.0;
contract InconsistentBlocks2 {
    function f(uint256 x) internal view returns (uint256 x_) {
        x_ = x;
        if ((x_ >= 3) && (x >= 1))
        x_ = 1;

    }

    function f2() public view returns (uint256 x) {
        x = 11;
        x = ((x > 20) || ((x > 9) && (x <= 10)))? 19 : x;
    }
}
```
</pre>
</details>
<details>
<summary>Solium -- Solidity 0.8.x</summary>
<pre>

> solium --version

Solium version: 4.4.0 (standard)
For more details visit https:


> solium../../testcases/regression/no_explicit_value_conversions/inconsistent_blocks.sol

./inconsistent_blocks.sol
  ✖ No explicit conversions from negative literals or literals larger than type(uint160).max to address type. (explicit-conversions-value)
  ✖ (5.7:18) Disallow use of block data in function log0. (no-explicit-block-data)
  ✖ (9.2:142) Disallow use of block data in function log18. (no-explicit-block-data)
  ✖ (12.0:59) Disallow use of block data in function log17. (no-explicit-block-data)
  ✖ (13.5:41) Disallow use of block data in function log28. (no-explicit-block-data)
  ✖ (14.4:33) Disallow use of block data in function log14. (no-explicit-block-data)
✖ There are 12 rules to check.

✖ Solium found 12 errors on 5 files.

>
</pre>
</details>

## FAQ

- [How to change `solium` version (https:
- [How to change `solium` flags when using custom rules (https:
- [Is `solium` stable or can I expect bugs? Is there a guarantee that every rule fixes all problems on every file?](#is
