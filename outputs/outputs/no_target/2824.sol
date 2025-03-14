pragma solidity ^0.8.0;
import "../oldStorageMut.sol";
contract newStorageMut{
    modifier m()
    {
        oldStorageMut storage mut store = oldStorageMut.storage;
        uint oldvalue = store.a;
        oldvalue = 3;
        assert(oldvalue == 2);
        a = 3;
        _;
    }
    uint constant a = 2;
}
function oldStorageGet() public pure returns (uint)
{
    return oldStorageMut.storage.a;
}
function newStorageGet() public pure returns (uint)
{
    oldStorageMut storage mut store = oldStorageMut.storage();
    uint oldvalue = store.a;
    oldvalue = 3;
    assert(oldvalue == 2);
    return oldvalue;
}
function oldMutableValue() public returns (uint) {
    return oldStorageMut.a;
}
function oldMutableGet() public view returns (uint) {
    return oldMutableValue();
}
```
If you execute the mutated code, it will fail with the following error message:
```solidity
Error encountered while running:

File: `2_oldStorageMut.sol`.


 pragma solidity ^0.8.0;
 contract oldStorageMut {
  uint constant a = 2;
 }


pragma solidity ^0.8.0;
import "../oldStorageMut.sol";
contract newStorageMut {
    modifier m()
    {
        oldStorageMut storage mut store = oldStorageMut.storage;
        uint oldvalue = store.a;
        oldvalue = 3;
        assert(oldvalue == 2);
        a = 3;
        _;
    }
    uint constant a = 2;
}


function oldStorageGet() public pure returns (uint)
{
    oldStorageMut.storage.a;
}
function newStorageGet() public pure returns (uint)
{
    oldStorageMut.storage()
      .a;
}
```
[source](https:

## Compiler Error

If you don't want to fail the build but want to keep the program as valid, use this workaround.

```python
def myFunction():
  ...
    return _g_data[0];
```
