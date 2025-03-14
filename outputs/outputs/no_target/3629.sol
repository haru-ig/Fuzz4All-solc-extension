pragma solidity ^0.8.0;
contract A {
    function aA(uint256) public pure {
    }
    function bB() public pure {
    }
}
```

## V0.5.15

```
This document is available from https:
```

## V0.5.11

```
This document is available from https:
```

The version prior to v0.5.11 was too restrictive in what could be done in the version upgrade. When the upgrade was completed, a number of upgrades broke the solidity contracts and could not be performed safely in an upgrade because the prior versions could not access any contract in the new version. These changes are now applied by developers in the repository.

Previously, we decided that the system would be locked within a single version of the compiler. So, all new upgrades would attempt to upgrade to a different version to ensure security. The reason for this change was that some older contracts should not allow newer versions of the compiler on this contract to upgrade themselves. Unfortunately, Solidity v0.5.11 has a bug where it will attempt to run upgrade code for a contract with a higher version of the compiler than the contract has. This bug has been corrected, but the upgrade code cannot be applied to the contract with a higher version because of the bug. In this situation, we have temporarily disabled some of the code upgrading the contract.

You can work around this change in your source code by using an earlier version of the compiler:

```
pragma solidity 0.5.7;
contract A {
    function cC(uint256) public pure {
    }
    function zZ(uint256) public pure {
    }
}
```

You can work around this change in your source code by using an earlier version of the compiler:

```
pragma solidity 0.5.5;
contract A {
    function cC(uint256) public pure {
    }
    function zZ(uint256) public pure {
    }
}
```

## V0.5.10

```
This document is available from https:
```

## V0.5.4

```
This document is available from https:
```

## V0.5.3

```
This document is available from https:
```

## V0.5.2

```
This document is available from https:
